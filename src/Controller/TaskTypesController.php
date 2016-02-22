<?php
namespace App\Controller;

use App\Controller\AppController;

/**
 * TaskTypes Controller
 *
 * @property \App\Model\Table\TaskTypesTable $TaskTypes
 */
class TaskTypesController extends AppController
{

    /**
     * Index method
     *
     * @return void
     */
    public function index()
    {
        $this->set('taskTypes', $this->paginate($this->TaskTypes));
        $this->set('_serialize', ['taskTypes']);
    }

    /**
     * View method
     *
     * @param string|null $id Task Type id.
     * @return void
     * @throws \Cake\Network\Exception\NotFoundException When record not found.
     */
    public function view($id = null)
    {
        $taskType = $this->TaskTypes->get($id, [
            'contain' => ['Tasks', 'UserReports']
        ]);
        $this->set('taskType', $taskType);
        $this->set('_serialize', ['taskType']);
    }

    /**
     * Add method
     *
     * @return void Redirects on successful add, renders view otherwise.
     */
    public function add()
    {
        $taskType = $this->TaskTypes->newEntity();
        if ($this->request->is('post')) {
            $taskType = $this->TaskTypes->patchEntity($taskType, $this->request->data);
            if ($this->TaskTypes->save($taskType)) {
                $this->Flash->success(__('The task type has been saved.'));
                return $this->redirect(['action' => 'index']);
            } else {
                $this->Flash->error(__('The task type could not be saved. Please, try again.'));
            }
        }
        $this->set(compact('taskType'));
        $this->set('_serialize', ['taskType']);
    }

    /**
     * Edit method
     *
     * @param string|null $id Task Type id.
     * @return void Redirects on successful edit, renders view otherwise.
     * @throws \Cake\Network\Exception\NotFoundException When record not found.
     */
    public function edit($id = null)
    {
        $taskType = $this->TaskTypes->get($id, [
            'contain' => []
        ]);
        if ($this->request->is(['patch', 'post', 'put'])) {
            $taskType = $this->TaskTypes->patchEntity($taskType, $this->request->data);
            if ($this->TaskTypes->save($taskType)) {
                $this->Flash->success(__('The task type has been saved.'));
                return $this->redirect(['action' => 'index']);
            } else {
                $this->Flash->error(__('The task type could not be saved. Please, try again.'));
            }
        }
        $this->set(compact('taskType'));
        $this->set('_serialize', ['taskType']);
    }

    /**
     * Delete method
     *
     * @param string|null $id Task Type id.
     * @return \Cake\Network\Response|null Redirects to index.
     * @throws \Cake\Network\Exception\NotFoundException When record not found.
     */
    public function delete($id = null)
    {
        $this->request->allowMethod(['post', 'delete']);
        $taskType = $this->TaskTypes->get($id);
        if ($this->TaskTypes->delete($taskType)) {
            $this->Flash->success(__('The task type has been deleted.'));
        } else {
            $this->Flash->error(__('The task type could not be deleted. Please, try again.'));
        }
        return $this->redirect(['action' => 'index']);
    }
}
