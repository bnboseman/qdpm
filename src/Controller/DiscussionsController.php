<?php
namespace App\Controller;

use App\Controller\AppController;

/**
 * Discussions Controller
 *
 * @property \App\Model\Table\DiscussionsTable $Discussions
 */
class DiscussionsController extends AppController
{
	public function isAuthorized($user) {
		$action = $this->request->params ['action'];


		// Allow all users to see index
		if ( in_array ( $action, ['index','view' ])  && !empty ( $user )) {
			return true;
		}

		if ( in_array ( $action, ['add', 'delete'] )  &&  ( $user['user_group']['allow_manage_discussions'] == 1 || $user['user_group']['allow_manage_discussions'] = 4 )) {
			return true;
		}


		return parent::isAuthorized ( $user );
	}

    /**
     * Index method
     *
     * @return void
     */
    public function index()
    {
        $this->paginate = [
            'contain' => ['Projects', 'Users', 'DiscussionStatus']
        ];
        $this->set('discussions', $this->paginate($this->Discussions));
        $this->set('_serialize', ['discussions']);
    }

    /**
     * View method
     *
     * @param string|null $id Discussion id.
     * @return void
     * @throws \Cake\Network\Exception\NotFoundException When record not found.
     */
    public function view($id = null)
    {
        $discussion = $this->Discussions->get($id, [
            'contain' => ['Projects', 'Users', 'DiscussionStatus', 'DiscussionComments', 'Tasks']
        ]);
        $this->set('discussion', $discussion);
        $this->set('_serialize', ['discussion']);
    }

    /**
     * Add method
     *
     * @return void Redirects on successful add, renders view otherwise.
     */
    public function add()
    {
        $discussion = $this->Discussions->newEntity();
        if ($this->request->is('post')) {
            $discussion = $this->Discussions->patchEntity($discussion, $this->request->data);
            if ($this->Discussions->save($discussion)) {
                $this->Flash->success(__('The discussion has been saved.'));
                return $this->redirect(['action' => 'index']);
            } else {
                $this->Flash->error(__('The discussion could not be saved. Please, try again.'));
            }
        }
        $projects = $this->Discussions->Projects->find('list', ['limit' => 200]);
        $users = $this->Discussions->Users->find('list', ['limit' => 200]);
        $discussionStatus = $this->Discussions->DiscussionStatus->find('list', ['limit' => 200]);
        $this->set(compact('discussion', 'projects', 'users', 'discussionStatus'));
        $this->set('_serialize', ['discussion']);
    }

    /**
     * Edit method
     *
     * @param string|null $id Discussion id.
     * @return void Redirects on successful edit, renders view otherwise.
     * @throws \Cake\Network\Exception\NotFoundException When record not found.
     */
    public function edit($id = null)
    {
        $discussion = $this->Discussions->get($id, [
            'contain' => []
        ]);
        if ($this->request->is(['patch', 'post', 'put'])) {
            $discussion = $this->Discussions->patchEntity($discussion, $this->request->data);
            if ($this->Discussions->save($discussion)) {
                $this->Flash->success(__('The discussion has been saved.'));
                return $this->redirect(['action' => 'index']);
            } else {
                $this->Flash->error(__('The discussion could not be saved. Please, try again.'));
            }
        }
        $projects = $this->Discussions->Projects->find('list', ['limit' => 200]);
        $users = $this->Discussions->Users->find('list', ['limit' => 200]);
        $discussionStatus = $this->Discussions->DiscussionStatus->find('list', ['limit' => 200]);
        $this->set(compact('discussion', 'projects', 'users', 'discussionStatus'));
        $this->set('_serialize', ['discussion']);
    }

    /**
     * Delete method
     *
     * @param string|null $id Discussion id.
     * @return \Cake\Network\Response|null Redirects to index.
     * @throws \Cake\Network\Exception\NotFoundException When record not found.
     */
    public function delete($id = null)
    {
        $this->request->allowMethod(['post', 'delete']);
        $discussion = $this->Discussions->get($id);
        if ($this->Discussions->delete($discussion)) {
            $this->Flash->success(__('The discussion has been deleted.'));
        } else {
            $this->Flash->error(__('The discussion could not be deleted. Please, try again.'));
        }
        return $this->redirect(['action' => 'index']);
    }
}
