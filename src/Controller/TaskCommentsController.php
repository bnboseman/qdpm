<?php
namespace App\Controller;

use App\Controller\AppController;

/**
 * TaskComments Controller
 *
 * @property \App\Model\Table\TaskCommentsTable $TaskComments
 */
class TaskCommentsController extends AppController
{

	public function isAuthorized($user) {
		$action = $this->request->params['action'];

		if ( in_array ( $action, ['view', 'delete'] )  && $user['user_group']['allow_manage_tasks']){
			return true;
		}
	}

    /**
     * Index method
     *
     * @return \Cake\Network\Response|null
     */
    public function index()
    {
        $this->paginate = [
            'contain' => ['Tasks', 'TaskStatus', 'TaskPriority', 'Users']
        ];
        $taskComments = $this->paginate($this->TaskComments);

        $this->set(compact('taskComments'));
        $this->set('_serialize', ['taskComments']);
    }

    /**
     * View method
     *
     * @param string|null $id Task Comment id.
     * @return \Cake\Network\Response|null
     * @throws \Cake\Datasource\Exception\RecordNotFoundException When record not found.
     */
    public function view($id = null)
    {
        $taskComment = $this->TaskComments->get($id, [
            'contain' => ['Tasks', 'TaskStatus', 'TaskPriority', 'Users']
        ]);

        $this->set('taskComment', $taskComment);
        $this->set('_serialize', ['taskComment']);
    }

    /**
     * Add method
     *
     * @return \Cake\Network\Response|void Redirects on successful add, renders view otherwise.
     */
    public function add()
    {
        $taskComment = $this->TaskComments->newEntity();
        if ($this->request->is('post')) {
            $taskComment = $this->TaskComments->patchEntity($taskComment, $this->request->data);
            if ($this->TaskComments->save($taskComment)) {
                $this->Flash->success(__('The task comment has been saved.'));
                return $this->redirect(['action' => 'index']);
            } else {
                $this->Flash->error(__('The task comment could not be saved. Please, try again.'));
            }
        }
        $tasks = $this->TaskComments->Tasks->find('list', ['limit' => 200]);
        $taskStatus = $this->TaskComments->TaskStatus->find('list', ['limit' => 200]);
        $taskPriority = $this->TaskComments->TaskPriority->find('list', ['limit' => 200]);
        $users = $this->TaskComments->Users->find('list', ['limit' => 200]);
        $this->set(compact('taskComment', 'tasks', 'taskStatus', 'taskPriority', 'users'));
        $this->set('_serialize', ['taskComment']);
    }

    /**
     * Edit method
     *
     * @param string|null $id Task Comment id.
     * @return \Cake\Network\Response|void Redirects on successful edit, renders view otherwise.
     * @throws \Cake\Network\Exception\NotFoundException When record not found.
     */
    public function edit($id = null)
    {
        $taskComment = $this->TaskComments->get($id, [
            'contain' => []
        ]);
        if ($this->request->is(['patch', 'post', 'put'])) {
            $taskComment = $this->TaskComments->patchEntity($taskComment, $this->request->data);
            if ($this->TaskComments->save($taskComment)) {
                $this->Flash->success(__('The task comment has been saved.'));
                return $this->redirect(['action' => 'index']);
            } else {
                $this->Flash->error(__('The task comment could not be saved. Please, try again.'));
            }
        }
        $tasks = $this->TaskComments->Tasks->find('list', ['limit' => 200]);
        $taskStatus = $this->TaskComments->TaskStatus->find('list', ['limit' => 200]);
        $taskPriority = $this->TaskComments->TaskPriority->find('list', ['limit' => 200]);
        $users = $this->TaskComments->Users->find('list', ['limit' => 200]);
        $this->set(compact('taskComment', 'tasks', 'taskStatus', 'taskPriority', 'users'));
        $this->set('_serialize', ['taskComment']);
    }

    /**
     * Delete method
     *
     * @param string|null $id Task Comment id.
     * @return \Cake\Network\Response|null Redirects to index.
     * @throws \Cake\Datasource\Exception\RecordNotFoundException When record not found.
     */
    public function delete($id = null)
    {
        $this->request->allowMethod(['post', 'delete']);
        $taskComment = $this->TaskComments->get($id);
        if ($this->TaskComments->delete($taskComment)) {
            $this->Flash->success(__('The task comment has been deleted.'));
        } else {
            $this->Flash->error(__('The task comment could not be deleted. Please, try again.'));
        }
    }
}
