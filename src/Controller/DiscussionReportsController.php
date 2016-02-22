<?php
namespace App\Controller;

use App\Controller\AppController;

/**
 * DiscussionReports Controller
 *
 * @property \App\Model\Table\DiscussionReportsTable $DiscussionReports
 */
class DiscussionReportsController extends AppController
{

    /**
     * Index method
     *
     * @return void
     */
    public function index()
    {
        $this->paginate = [
            'contain' => ['Users', 'Projects', 'ProjectTypes', 'ProjectStatus', 'DiscussionStatus']
        ];
        $this->set('discussionReports', $this->paginate($this->DiscussionReports));
        $this->set('_serialize', ['discussionReports']);
    }

    /**
     * View method
     *
     * @param string|null $id Discussion Report id.
     * @return void
     * @throws \Cake\Network\Exception\NotFoundException When record not found.
     */
    public function view($id = null)
    {
        $discussionReport = $this->DiscussionReports->get($id, [
            'contain' => ['Users', 'Projects', 'ProjectTypes', 'ProjectStatus', 'DiscussionStatus']
        ]);
        $this->set('discussionReport', $discussionReport);
        $this->set('_serialize', ['discussionReport']);
    }

    /**
     * Add method
     *
     * @return void Redirects on successful add, renders view otherwise.
     */
    public function add()
    {
        $discussionReport = $this->DiscussionReports->newEntity();
        if ($this->request->is('post')) {
            $discussionReport = $this->DiscussionReports->patchEntity($discussionReport, $this->request->data);
            if ($this->DiscussionReports->save($discussionReport)) {
                $this->Flash->success(__('The discussion report has been saved.'));
                return $this->redirect(['action' => 'index']);
            } else {
                $this->Flash->error(__('The discussion report could not be saved. Please, try again.'));
            }
        }
        $users = $this->DiscussionReports->Users->find('list', ['limit' => 200]);
        $projects = $this->DiscussionReports->Projects->find('list', ['limit' => 200]);
        $projectTypes = $this->DiscussionReports->ProjectTypes->find('list', ['limit' => 200]);
        $projectStatus = $this->DiscussionReports->ProjectStatus->find('list', ['limit' => 200]);
        $discussionStatus = $this->DiscussionReports->DiscussionStatus->find('list', ['limit' => 200]);
        $this->set(compact('discussionReport', 'users', 'projects', 'projectTypes', 'projectStatus', 'discussionStatus'));
        $this->set('_serialize', ['discussionReport']);
    }

    /**
     * Edit method
     *
     * @param string|null $id Discussion Report id.
     * @return void Redirects on successful edit, renders view otherwise.
     * @throws \Cake\Network\Exception\NotFoundException When record not found.
     */
    public function edit($id = null)
    {
        $discussionReport = $this->DiscussionReports->get($id, [
            'contain' => []
        ]);
        if ($this->request->is(['patch', 'post', 'put'])) {
            $discussionReport = $this->DiscussionReports->patchEntity($discussionReport, $this->request->data);
            if ($this->DiscussionReports->save($discussionReport)) {
                $this->Flash->success(__('The discussion report has been saved.'));
                return $this->redirect(['action' => 'index']);
            } else {
                $this->Flash->error(__('The discussion report could not be saved. Please, try again.'));
            }
        }
        $users = $this->DiscussionReports->Users->find('list', ['limit' => 200]);
        $projects = $this->DiscussionReports->Projects->find('list', ['limit' => 200]);
        $projectTypes = $this->DiscussionReports->ProjectTypes->find('list', ['limit' => 200]);
        $projectStatus = $this->DiscussionReports->ProjectStatus->find('list', ['limit' => 200]);
        $discussionStatus = $this->DiscussionReports->DiscussionStatus->find('list', ['limit' => 200]);
        $this->set(compact('discussionReport', 'users', 'projects', 'projectTypes', 'projectStatus', 'discussionStatus'));
        $this->set('_serialize', ['discussionReport']);
    }

    /**
     * Delete method
     *
     * @param string|null $id Discussion Report id.
     * @return \Cake\Network\Response|null Redirects to index.
     * @throws \Cake\Network\Exception\NotFoundException When record not found.
     */
    public function delete($id = null)
    {
        $this->request->allowMethod(['post', 'delete']);
        $discussionReport = $this->DiscussionReports->get($id);
        if ($this->DiscussionReports->delete($discussionReport)) {
            $this->Flash->success(__('The discussion report has been deleted.'));
        } else {
            $this->Flash->error(__('The discussion report could not be deleted. Please, try again.'));
        }
        return $this->redirect(['action' => 'index']);
    }
}
