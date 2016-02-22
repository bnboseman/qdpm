<?php
namespace App\Controller;

use App\Controller\AppController;

/**
 * ProjectStatus Controller
 *
 * @property \App\Model\Table\ProjectStatusTable $ProjectStatus
 */
class ProjectStatusController extends AppController
{

    /**
     * Index method
     *
     * @return void
     */
    public function index()
    {
        $this->set('projectStatus', $this->paginate($this->ProjectStatus));
        $this->set('_serialize', ['projectStatus']);
    }

    /**
     * View method
     *
     * @param string|null $id Project Status id.
     * @return void
     * @throws \Cake\Network\Exception\NotFoundException When record not found.
     */
    public function view($id = null)
    {
        $projectStatus = $this->ProjectStatus->get($id, [
            'contain' => ['DiscussionReports', 'ProjectReports', 'Projects', 'TicketReports', 'UserReports']
        ]);
        $this->set('projectStatus', $projectStatus);
        $this->set('_serialize', ['projectStatus']);
    }

    /**
     * Add method
     *
     * @return void Redirects on successful add, renders view otherwise.
     */
    public function add()
    {
        $projectStatus = $this->ProjectStatus->newEntity();
        if ($this->request->is('post')) {
            $projectStatus = $this->ProjectStatus->patchEntity($projectStatus, $this->request->data);
            if ($this->ProjectStatus->save($projectStatus)) {
                $this->Flash->success(__('The project status has been saved.'));
                return $this->redirect(['action' => 'index']);
            } else {
                $this->Flash->error(__('The project status could not be saved. Please, try again.'));
            }
        }
        $this->set(compact('projectStatus'));
        $this->set('_serialize', ['projectStatus']);
    }

    /**
     * Edit method
     *
     * @param string|null $id Project Status id.
     * @return void Redirects on successful edit, renders view otherwise.
     * @throws \Cake\Network\Exception\NotFoundException When record not found.
     */
    public function edit($id = null)
    {
        $projectStatus = $this->ProjectStatus->get($id, [
            'contain' => []
        ]);
        if ($this->request->is(['patch', 'post', 'put'])) {
            $projectStatus = $this->ProjectStatus->patchEntity($projectStatus, $this->request->data);
            if ($this->ProjectStatus->save($projectStatus)) {
                $this->Flash->success(__('The project status has been saved.'));
                return $this->redirect(['action' => 'index']);
            } else {
                $this->Flash->error(__('The project status could not be saved. Please, try again.'));
            }
        }
        $this->set(compact('projectStatus'));
        $this->set('_serialize', ['projectStatus']);
    }

    /**
     * Delete method
     *
     * @param string|null $id Project Status id.
     * @return \Cake\Network\Response|null Redirects to index.
     * @throws \Cake\Network\Exception\NotFoundException When record not found.
     */
    public function delete($id = null)
    {
        $this->request->allowMethod(['post', 'delete']);
        $projectStatus = $this->ProjectStatus->get($id);
        if ($this->ProjectStatus->delete($projectStatus)) {
            $this->Flash->success(__('The project status has been deleted.'));
        } else {
            $this->Flash->error(__('The project status could not be deleted. Please, try again.'));
        }
        return $this->redirect(['action' => 'index']);
    }
}
