<?php
namespace App\Controller;

use App\Controller\AppController;

/**
 * ProjectReports Controller
 *
 * @property \App\Model\Table\ProjectReportsTable $ProjectReports
 */
class ProjectReportsController extends AppController
{

    /**
     * Index method
     *
     * @return void
     */
    public function index()
    {
        $this->paginate = [
            'contain' => ['Users', 'Projects', 'ProjectTypes', 'ProjectStatus']
        ];
        $this->set('projectReports', $this->paginate($this->ProjectReports));
        $this->set('_serialize', ['projectReports']);
    }

    /**
     * View method
     *
     * @param string|null $id Project Report id.
     * @return void
     * @throws \Cake\Network\Exception\NotFoundException When record not found.
     */
    public function view($id = null)
    {
        $projectReport = $this->ProjectReports->get($id, [
            'contain' => ['Users', 'Projects', 'ProjectTypes', 'ProjectStatus']
        ]);
        $this->set('projectReport', $projectReport);
        $this->set('_serialize', ['projectReport']);
    }

    /**
     * Add method
     *
     * @return void Redirects on successful add, renders view otherwise.
     */
    public function add()
    {
        $projectReport = $this->ProjectReports->newEntity();
        if ($this->request->is('post')) {
            $projectReport = $this->ProjectReports->patchEntity($projectReport, $this->request->data);
            if ($this->ProjectReports->save($projectReport)) {
                $this->Flash->success(__('The project report has been saved.'));
                return $this->redirect(['action' => 'index']);
            } else {
                $this->Flash->error(__('The project report could not be saved. Please, try again.'));
            }
        }
        $users = $this->ProjectReports->Users->find('list', ['limit' => 200]);
        $projects = $this->ProjectReports->Projects->find('list', ['limit' => 200]);
        $projectTypes = $this->ProjectReports->ProjectTypes->find('list', ['limit' => 200]);
        $projectStatus = $this->ProjectReports->ProjectStatus->find('list', ['limit' => 200]);
        $this->set(compact('projectReport', 'users', 'projects', 'projectTypes', 'projectStatus'));
        $this->set('_serialize', ['projectReport']);
    }

    /**
     * Edit method
     *
     * @param string|null $id Project Report id.
     * @return void Redirects on successful edit, renders view otherwise.
     * @throws \Cake\Network\Exception\NotFoundException When record not found.
     */
    public function edit($id = null)
    {
        $projectReport = $this->ProjectReports->get($id, [
            'contain' => []
        ]);
        if ($this->request->is(['patch', 'post', 'put'])) {
            $projectReport = $this->ProjectReports->patchEntity($projectReport, $this->request->data);
            if ($this->ProjectReports->save($projectReport)) {
                $this->Flash->success(__('The project report has been saved.'));
                return $this->redirect(['action' => 'index']);
            } else {
                $this->Flash->error(__('The project report could not be saved. Please, try again.'));
            }
        }
        $users = $this->ProjectReports->Users->find('list', ['limit' => 200]);
        $projects = $this->ProjectReports->Projects->find('list', ['limit' => 200]);
        $projectTypes = $this->ProjectReports->ProjectTypes->find('list', ['limit' => 200]);
        $projectStatus = $this->ProjectReports->ProjectStatus->find('list', ['limit' => 200]);
        $this->set(compact('projectReport', 'users', 'projects', 'projectTypes', 'projectStatus'));
        $this->set('_serialize', ['projectReport']);
    }

    /**
     * Delete method
     *
     * @param string|null $id Project Report id.
     * @return \Cake\Network\Response|null Redirects to index.
     * @throws \Cake\Network\Exception\NotFoundException When record not found.
     */
    public function delete($id = null)
    {
        $this->request->allowMethod(['post', 'delete']);
        $projectReport = $this->ProjectReports->get($id);
        if ($this->ProjectReports->delete($projectReport)) {
            $this->Flash->success(__('The project report has been deleted.'));
        } else {
            $this->Flash->error(__('The project report could not be deleted. Please, try again.'));
        }
        return $this->redirect(['action' => 'index']);
    }
}
