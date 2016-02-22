<?php
namespace App\Controller;

use App\Controller\AppController;

/**
 * UserReports Controller
 *
 * @property \App\Model\Table\UserReportsTable $UserReports
 */
class UserReportsController extends AppController
{

    /**
     * Index method
     *
     * @return void
     */
    public function index()
    {
        $this->paginate = [
            'contain' => ['Users', 'Projects', 'ProjectTypes', 'ProjectStatus', 'TaskStatus', 'TaskTypes', 'TaskLabels']
        ];
        $this->set('userReports', $this->paginate($this->UserReports));
        $this->set('_serialize', ['userReports']);
    }

    /**
     * View method
     *
     * @param string|null $id User Report id.
     * @return void
     * @throws \Cake\Network\Exception\NotFoundException When record not found.
     */
    public function view($id = null)
    {
        $userReport = $this->UserReports->get($id, [
            'contain' => ['Users', 'Projects', 'ProjectTypes', 'ProjectStatus', 'TaskStatus', 'TaskTypes', 'TaskLabels']
        ]);
        $this->set('userReport', $userReport);
        $this->set('_serialize', ['userReport']);
    }

    /**
     * Add method
     *
     * @return void Redirects on successful add, renders view otherwise.
     */
    public function add()
    {
        $userReport = $this->UserReports->newEntity();
        if ($this->request->is('post')) {
            $userReport = $this->UserReports->patchEntity($userReport, $this->request->data);
            if ($this->UserReports->save($userReport)) {
                $this->Flash->success(__('The user report has been saved.'));
                return $this->redirect(['action' => 'index']);
            } else {
                $this->Flash->error(__('The user report could not be saved. Please, try again.'));
            }
        }
        $users = $this->UserReports->Users->find('list', ['limit' => 200]);
        $projects = $this->UserReports->Projects->find('list', ['limit' => 200]);
        $projectTypes = $this->UserReports->ProjectTypes->find('list', ['limit' => 200]);
        $projectStatus = $this->UserReports->ProjectStatus->find('list', ['limit' => 200]);
        $taskStatus = $this->UserReports->TaskStatus->find('list', ['limit' => 200]);
        $taskTypes = $this->UserReports->TaskTypes->find('list', ['limit' => 200]);
        $taskLabels = $this->UserReports->TaskLabels->find('list', ['limit' => 200]);
        $this->set(compact('userReport', 'users', 'projects', 'projectTypes', 'projectStatus', 'taskStatus', 'taskTypes', 'taskLabels'));
        $this->set('_serialize', ['userReport']);
    }

    /**
     * Edit method
     *
     * @param string|null $id User Report id.
     * @return void Redirects on successful edit, renders view otherwise.
     * @throws \Cake\Network\Exception\NotFoundException When record not found.
     */
    public function edit($id = null)
    {
        $userReport = $this->UserReports->get($id, [
            'contain' => []
        ]);
        if ($this->request->is(['patch', 'post', 'put'])) {
            $userReport = $this->UserReports->patchEntity($userReport, $this->request->data);
            if ($this->UserReports->save($userReport)) {
                $this->Flash->success(__('The user report has been saved.'));
                return $this->redirect(['action' => 'index']);
            } else {
                $this->Flash->error(__('The user report could not be saved. Please, try again.'));
            }
        }
        $users = $this->UserReports->Users->find('list', ['limit' => 200]);
        $projects = $this->UserReports->Projects->find('list', ['limit' => 200]);
        $projectTypes = $this->UserReports->ProjectTypes->find('list', ['limit' => 200]);
        $projectStatus = $this->UserReports->ProjectStatus->find('list', ['limit' => 200]);
        $taskStatus = $this->UserReports->TaskStatus->find('list', ['limit' => 200]);
        $taskTypes = $this->UserReports->TaskTypes->find('list', ['limit' => 200]);
        $taskLabels = $this->UserReports->TaskLabels->find('list', ['limit' => 200]);
        $this->set(compact('userReport', 'users', 'projects', 'projectTypes', 'projectStatus', 'taskStatus', 'taskTypes', 'taskLabels'));
        $this->set('_serialize', ['userReport']);
    }

    /**
     * Delete method
     *
     * @param string|null $id User Report id.
     * @return \Cake\Network\Response|null Redirects to index.
     * @throws \Cake\Network\Exception\NotFoundException When record not found.
     */
    public function delete($id = null)
    {
        $this->request->allowMethod(['post', 'delete']);
        $userReport = $this->UserReports->get($id);
        if ($this->UserReports->delete($userReport)) {
            $this->Flash->success(__('The user report has been deleted.'));
        } else {
            $this->Flash->error(__('The user report could not be deleted. Please, try again.'));
        }
        return $this->redirect(['action' => 'index']);
    }
}
