<?php
namespace App\Controller;

use App\Controller\AppController;

/**
 * TaskGroups Controller
 *
 * @property \App\Model\Table\TaskGroupsTable $TaskGroups
 */
class TaskGroupsController extends AppController
{

    /**
     * Index method
     *
     * @return void
     */
    public function index()
    {
        $this->paginate = [
            'contain' => ['Projects']
        ];
        $this->set('taskGroups', $this->paginate($this->TaskGroups));
        $this->set('_serialize', ['taskGroups']);
    }

    /**
     * View method
     *
     * @param string|null $id Task Group id.
     * @return void
     * @throws \Cake\Network\Exception\NotFoundException When record not found.
     */
    public function view($id = null)
    {
        $taskGroup = $this->TaskGroups->get($id, [
            'contain' => ['Projects']
        ]);
        $this->set('taskGroup', $taskGroup);
        $this->set('_serialize', ['taskGroup']);
    }

    /**
     * Add method
     *
     * @return void Redirects on successful add, renders view otherwise.
     */
    public function add()
    {
        $taskGroup = $this->TaskGroups->newEntity();
        if ($this->request->is('post')) {
            $taskGroup = $this->TaskGroups->patchEntity($taskGroup, $this->request->data);
            if ($this->TaskGroups->save($taskGroup)) {
                $this->Flash->success(__('The task group has been saved.'));
                return $this->redirect(['action' => 'index']);
            } else {
                $this->Flash->error(__('The task group could not be saved. Please, try again.'));
            }
        }
        $projects = $this->TaskGroups->Projects->find('list', ['limit' => 200]);
        $this->set(compact('taskGroup', 'projects'));
        $this->set('_serialize', ['taskGroup']);
    }

    /**
     * Edit method
     *
     * @param string|null $id Task Group id.
     * @return void Redirects on successful edit, renders view otherwise.
     * @throws \Cake\Network\Exception\NotFoundException When record not found.
     */
    public function edit($id = null)
    {
        $taskGroup = $this->TaskGroups->get($id, [
            'contain' => []
        ]);
        if ($this->request->is(['patch', 'post', 'put'])) {
            $taskGroup = $this->TaskGroups->patchEntity($taskGroup, $this->request->data);
            if ($this->TaskGroups->save($taskGroup)) {
                $this->Flash->success(__('The task group has been saved.'));
                return $this->redirect(['action' => 'index']);
            } else {
                $this->Flash->error(__('The task group could not be saved. Please, try again.'));
            }
        }
        $projects = $this->TaskGroups->Projects->find('list', ['limit' => 200]);
        $this->set(compact('taskGroup', 'projects'));
        $this->set('_serialize', ['taskGroup']);
    }

    /**
     * Delete method
     *
     * @param string|null $id Task Group id.
     * @return \Cake\Network\Response|null Redirects to index.
     * @throws \Cake\Network\Exception\NotFoundException When record not found.
     */
    public function delete($id = null)
    {
        $this->request->allowMethod(['post', 'delete']);
        $taskGroup = $this->TaskGroups->get($id);
        if ($this->TaskGroups->delete($taskGroup)) {
            $this->Flash->success(__('The task group has been deleted.'));
        } else {
            $this->Flash->error(__('The task group could not be deleted. Please, try again.'));
        }
        return $this->redirect(['action' => 'index']);
    }
}
