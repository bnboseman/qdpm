<?php
namespace App\Controller;

use App\Controller\AppController;

/**
 * DiscussionComments Controller
 *
 * @property \App\Model\Table\DiscussionCommentsTable $DiscussionComments
 */
class DiscussionCommentsController extends AppController
{

    /**
     * Index method
     *
     * @return void
     */
    public function index()
    {
        $this->paginate = [
            'contain' => ['Discussions', 'Users', 'DiscussionStatus']
        ];
        $this->set('discussionComments', $this->paginate($this->DiscussionComments));
        $this->set('_serialize', ['discussionComments']);
    }

    /**
     * View method
     *
     * @param string|null $id Discussion Comment id.
     * @return void
     * @throws \Cake\Network\Exception\NotFoundException When record not found.
     */
    public function view($id = null)
    {
        $discussionComment = $this->DiscussionComments->get($id, [
            'contain' => ['Discussions', 'Users', 'DiscussionStatus']
        ]);
        $this->set('discussionComment', $discussionComment);
        $this->set('_serialize', ['discussionComment']);
    }

    /**
     * Add method
     *
     * @return void Redirects on successful add, renders view otherwise.
     */
    public function add()
    {
        $discussionComment = $this->DiscussionComments->newEntity();
        if ($this->request->is('post')) {
            $discussionComment = $this->DiscussionComments->patchEntity($discussionComment, $this->request->data);
            if ($this->DiscussionComments->save($discussionComment)) {
                $this->Flash->success(__('The discussion comment has been saved.'));
                return $this->redirect(['action' => 'index']);
            } else {
                $this->Flash->error(__('The discussion comment could not be saved. Please, try again.'));
            }
        }
        $discussions = $this->DiscussionComments->Discussions->find('list', ['limit' => 200]);
        $users = $this->DiscussionComments->Users->find('list', ['limit' => 200]);
        $discussionStatus = $this->DiscussionComments->DiscussionStatus->find('list', ['limit' => 200]);
        $this->set(compact('discussionComment', 'discussions', 'users', 'discussionStatus'));
        $this->set('_serialize', ['discussionComment']);
    }

    /**
     * Edit method
     *
     * @param string|null $id Discussion Comment id.
     * @return void Redirects on successful edit, renders view otherwise.
     * @throws \Cake\Network\Exception\NotFoundException When record not found.
     */
    public function edit($id = null)
    {
        $discussionComment = $this->DiscussionComments->get($id, [
            'contain' => []
        ]);
        if ($this->request->is(['patch', 'post', 'put'])) {
            $discussionComment = $this->DiscussionComments->patchEntity($discussionComment, $this->request->data);
            if ($this->DiscussionComments->save($discussionComment)) {
                $this->Flash->success(__('The discussion comment has been saved.'));
                return $this->redirect(['action' => 'index']);
            } else {
                $this->Flash->error(__('The discussion comment could not be saved. Please, try again.'));
            }
        }
        $discussions = $this->DiscussionComments->Discussions->find('list', ['limit' => 200]);
        $users = $this->DiscussionComments->Users->find('list', ['limit' => 200]);
        $discussionStatus = $this->DiscussionComments->DiscussionStatus->find('list', ['limit' => 200]);
        $this->set(compact('discussionComment', 'discussions', 'users', 'discussionStatus'));
        $this->set('_serialize', ['discussionComment']);
    }

    /**
     * Delete method
     *
     * @param string|null $id Discussion Comment id.
     * @return \Cake\Network\Response|null Redirects to index.
     * @throws \Cake\Network\Exception\NotFoundException When record not found.
     */
    public function delete($id = null)
    {
        $this->request->allowMethod(['post', 'delete']);
        $discussionComment = $this->DiscussionComments->get($id);
        if ($this->DiscussionComments->delete($discussionComment)) {
            $this->Flash->success(__('The discussion comment has been deleted.'));
        } else {
            $this->Flash->error(__('The discussion comment could not be deleted. Please, try again.'));
        }
        return $this->redirect(['action' => 'index']);
    }
}
