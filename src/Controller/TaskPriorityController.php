<?php
namespace App\Controller;

use App\Controller\AppController;

/**
 * TaskPriority Controller
 *
 * @property \App\Model\Table\TaskPriorityTable $TaskPriority
 */
class TaskPriorityController extends AppController
{

    /**
     * Index method
     *
     * @return void
     */
    public function index()
    {
        $this->set('taskPriority', $this->paginate($this->TaskPriority));
        $this->set('_serialize', ['taskPriority']);
    }

    /**
     * View method
     *
     * @param string|null $id Task Priority id.
     * @return void
     * @throws \Cake\Network\Exception\NotFoundException When record not found.
     */
    public function view($id = null)
    {
        $taskPriority = $this->TaskPriority->get($id, [
            'contain' => ['TaskComments', 'Tasks']
        ]);
        $this->set('taskPriority', $taskPriority);
        $this->set('_serialize', ['taskPriority']);
    }

    /**
     * Add method
     *
     * @return void Redirects on successful add, renders view otherwise.
     */
    public function add()
    {
        $taskPriority = $this->TaskPriority->newEntity();
        if ($this->request->is('post')) {
            $taskPriority = $this->TaskPriority->patchEntity($taskPriority, $this->request->data);
            if ($this->TaskPriority->save($taskPriority)) {
                $this->Flash->success(__('The task priority has been saved.'));
                return $this->redirect(['action' => 'index']);
            } else {
                $this->Flash->error(__('The task priority could not be saved. Please, try again.'));
            }
        }
        $this->set(compact('taskPriority'));
        $this->set('_serialize', ['taskPriority']);
    }

    /**
     * Edit method
     *
     * @param string|null $id Task Priority id.
     * @return void Redirects on successful edit, renders view otherwise.
     * @throws \Cake\Network\Exception\NotFoundException When record not found.
     */
    public function edit($id = null)
    {
        $taskPriority = $this->TaskPriority->get($id, [
            'contain' => []
        ]);
        if ($this->request->is(['patch', 'post', 'put'])) {
            $taskPriority = $this->TaskPriority->patchEntity($taskPriority, $this->request->data);
            if ($this->TaskPriority->save($taskPriority)) {
                $this->Flash->success(__('The task priority has been saved.'));
                return $this->redirect(['action' => 'index']);
            } else {
                $this->Flash->error(__('The task priority could not be saved. Please, try again.'));
            }
        }
        $this->set(compact('taskPriority'));
        $this->set('_serialize', ['taskPriority']);
    }

    /**
     * Delete method
     *
     * @param string|null $id Task Priority id.
     * @return \Cake\Network\Response|null Redirects to index.
     * @throws \Cake\Network\Exception\NotFoundException When record not found.
     */
    public function delete($id = null)
    {
        $this->request->allowMethod(['post', 'delete']);
        $taskPriority = $this->TaskPriority->get($id);
        if ($this->TaskPriority->delete($taskPriority)) {
            $this->Flash->success(__('The task priority has been deleted.'));
        } else {
            $this->Flash->error(__('The task priority could not be deleted. Please, try again.'));
        }
        return $this->redirect(['action' => 'index']);
    }
}
