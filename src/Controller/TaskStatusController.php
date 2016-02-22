<?php
namespace App\Controller;

use App\Controller\AppController;

/**
 * TaskStatus Controller
 *
 * @property \App\Model\Table\TaskStatusTable $TaskStatus
 */
class TaskStatusController extends AppController
{

    /**
     * Index method
     *
     * @return void
     */
    public function index()
    {
        $this->set('taskStatus', $this->paginate($this->TaskStatus));
        $this->set('_serialize', ['taskStatus']);
    }

    /**
     * View method
     *
     * @param string|null $id Task Status id.
     * @return void
     * @throws \Cake\Network\Exception\NotFoundException When record not found.
     */
    public function view($id = null)
    {
        $taskStatus = $this->TaskStatus->get($id, [
            'contain' => ['TaskComments', 'Tasks', 'UserReports']
        ]);
        $this->set('taskStatus', $taskStatus);
        $this->set('_serialize', ['taskStatus']);
    }

    /**
     * Add method
     *
     * @return void Redirects on successful add, renders view otherwise.
     */
    public function add()
    {
        $taskStatus = $this->TaskStatus->newEntity();
        if ($this->request->is('post')) {
            $taskStatus = $this->TaskStatus->patchEntity($taskStatus, $this->request->data);
            if ($this->TaskStatus->save($taskStatus)) {
                $this->Flash->success(__('The task status has been saved.'));
                return $this->redirect(['action' => 'index']);
            } else {
                $this->Flash->error(__('The task status could not be saved. Please, try again.'));
            }
        }
        $this->set(compact('taskStatus'));
        $this->set('_serialize', ['taskStatus']);
    }

    /**
     * Edit method
     *
     * @param string|null $id Task Status id.
     * @return void Redirects on successful edit, renders view otherwise.
     * @throws \Cake\Network\Exception\NotFoundException When record not found.
     */
    public function edit($id = null)
    {
        $taskStatus = $this->TaskStatus->get($id, [
            'contain' => []
        ]);
        if ($this->request->is(['patch', 'post', 'put'])) {
            $taskStatus = $this->TaskStatus->patchEntity($taskStatus, $this->request->data);
            if ($this->TaskStatus->save($taskStatus)) {
                $this->Flash->success(__('The task status has been saved.'));
                return $this->redirect(['action' => 'index']);
            } else {
                $this->Flash->error(__('The task status could not be saved. Please, try again.'));
            }
        }
        $this->set(compact('taskStatus'));
        $this->set('_serialize', ['taskStatus']);
    }

    /**
     * Delete method
     *
     * @param string|null $id Task Status id.
     * @return \Cake\Network\Response|null Redirects to index.
     * @throws \Cake\Network\Exception\NotFoundException When record not found.
     */
    public function delete($id = null)
    {
        $this->request->allowMethod(['post', 'delete']);
        $taskStatus = $this->TaskStatus->get($id);
        if ($this->TaskStatus->delete($taskStatus)) {
            $this->Flash->success(__('The task status has been deleted.'));
        } else {
            $this->Flash->error(__('The task status could not be deleted. Please, try again.'));
        }
        return $this->redirect(['action' => 'index']);
    }
}
