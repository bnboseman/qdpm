<?php
namespace App\Controller;

use App\Controller\AppController;

/**
 * TaskLabels Controller
 *
 * @property \App\Model\Table\TaskLabelsTable $TaskLabels
 */
class TaskLabelsController extends AppController
{

    /**
     * Index method
     *
     * @return void
     */
    public function index()
    {
        $this->set('taskLabels', $this->paginate($this->TaskLabels));
        $this->set('_serialize', ['taskLabels']);
    }

    /**
     * View method
     *
     * @param string|null $id Task Label id.
     * @return void
     * @throws \Cake\Network\Exception\NotFoundException When record not found.
     */
    public function view($id = null)
    {
        $taskLabel = $this->TaskLabels->get($id, [
            'contain' => ['Tasks', 'UserReports']
        ]);
        $this->set('taskLabel', $taskLabel);
        $this->set('_serialize', ['taskLabel']);
    }

    /**
     * Add method
     *
     * @return void Redirects on successful add, renders view otherwise.
     */
    public function add()
    {
        $taskLabel = $this->TaskLabels->newEntity();
        if ($this->request->is('post')) {
            $taskLabel = $this->TaskLabels->patchEntity($taskLabel, $this->request->data);
            if ($this->TaskLabels->save($taskLabel)) {
                $this->Flash->success(__('The task label has been saved.'));
                return $this->redirect(['action' => 'index']);
            } else {
                $this->Flash->error(__('The task label could not be saved. Please, try again.'));
            }
        }
        $this->set(compact('taskLabel'));
        $this->set('_serialize', ['taskLabel']);
    }

    /**
     * Edit method
     *
     * @param string|null $id Task Label id.
     * @return void Redirects on successful edit, renders view otherwise.
     * @throws \Cake\Network\Exception\NotFoundException When record not found.
     */
    public function edit($id = null)
    {
        $taskLabel = $this->TaskLabels->get($id, [
            'contain' => []
        ]);
        if ($this->request->is(['patch', 'post', 'put'])) {
            $taskLabel = $this->TaskLabels->patchEntity($taskLabel, $this->request->data);
            if ($this->TaskLabels->save($taskLabel)) {
                $this->Flash->success(__('The task label has been saved.'));
                return $this->redirect(['action' => 'index']);
            } else {
                $this->Flash->error(__('The task label could not be saved. Please, try again.'));
            }
        }
        $this->set(compact('taskLabel'));
        $this->set('_serialize', ['taskLabel']);
    }

    /**
     * Delete method
     *
     * @param string|null $id Task Label id.
     * @return \Cake\Network\Response|null Redirects to index.
     * @throws \Cake\Network\Exception\NotFoundException When record not found.
     */
    public function delete($id = null)
    {
        $this->request->allowMethod(['post', 'delete']);
        $taskLabel = $this->TaskLabels->get($id);
        if ($this->TaskLabels->delete($taskLabel)) {
            $this->Flash->success(__('The task label has been deleted.'));
        } else {
            $this->Flash->error(__('The task label could not be deleted. Please, try again.'));
        }
        return $this->redirect(['action' => 'index']);
    }
}
