<?php
namespace App\Controller;

use App\Controller\AppController;

/**
 * TicketReports Controller
 *
 * @property \App\Model\Table\TicketReportsTable $TicketReports
 */
class TicketReportsController extends AppController
{

    /**
     * Index method
     *
     * @return void
     */
    public function index()
    {
        $this->paginate = [
            'contain' => ['Users', 'Projects', 'ProjectTypes', 'ProjectStatus', 'Departments', 'TicketTypes', 'TicketStatus']
        ];
        $this->set('ticketReports', $this->paginate($this->TicketReports));
        $this->set('_serialize', ['ticketReports']);
    }

    /**
     * View method
     *
     * @param string|null $id Ticket Report id.
     * @return void
     * @throws \Cake\Network\Exception\NotFoundException When record not found.
     */
    public function view($id = null)
    {
        $ticketReport = $this->TicketReports->get($id, [
            'contain' => ['Users', 'Projects', 'ProjectTypes', 'ProjectStatus', 'Departments', 'TicketTypes', 'TicketStatus']
        ]);
        $this->set('ticketReport', $ticketReport);
        $this->set('_serialize', ['ticketReport']);
    }

    /**
     * Add method
     *
     * @return void Redirects on successful add, renders view otherwise.
     */
    public function add()
    {
        $ticketReport = $this->TicketReports->newEntity();
        if ($this->request->is('post')) {
            $ticketReport = $this->TicketReports->patchEntity($ticketReport, $this->request->data);
            if ($this->TicketReports->save($ticketReport)) {
                $this->Flash->success(__('The ticket report has been saved.'));
                return $this->redirect(['action' => 'index']);
            } else {
                $this->Flash->error(__('The ticket report could not be saved. Please, try again.'));
            }
        }
        $users = $this->TicketReports->Users->find('list', ['limit' => 200]);
        $projects = $this->TicketReports->Projects->find('list', ['limit' => 200]);
        $projectTypes = $this->TicketReports->ProjectTypes->find('list', ['limit' => 200]);
        $projectStatus = $this->TicketReports->ProjectStatus->find('list', ['limit' => 200]);
        $departments = $this->TicketReports->Departments->find('list', ['limit' => 200]);
        $ticketTypes = $this->TicketReports->TicketTypes->find('list', ['limit' => 200]);
        $ticketStatus = $this->TicketReports->TicketStatus->find('list', ['limit' => 200]);
        $this->set(compact('ticketReport', 'users', 'projects', 'projectTypes', 'projectStatus', 'departments', 'ticketTypes', 'ticketStatus'));
        $this->set('_serialize', ['ticketReport']);
    }

    /**
     * Edit method
     *
     * @param string|null $id Ticket Report id.
     * @return void Redirects on successful edit, renders view otherwise.
     * @throws \Cake\Network\Exception\NotFoundException When record not found.
     */
    public function edit($id = null)
    {
        $ticketReport = $this->TicketReports->get($id, [
            'contain' => []
        ]);
        if ($this->request->is(['patch', 'post', 'put'])) {
            $ticketReport = $this->TicketReports->patchEntity($ticketReport, $this->request->data);
            if ($this->TicketReports->save($ticketReport)) {
                $this->Flash->success(__('The ticket report has been saved.'));
                return $this->redirect(['action' => 'index']);
            } else {
                $this->Flash->error(__('The ticket report could not be saved. Please, try again.'));
            }
        }
        $users = $this->TicketReports->Users->find('list', ['limit' => 200]);
        $projects = $this->TicketReports->Projects->find('list', ['limit' => 200]);
        $projectTypes = $this->TicketReports->ProjectTypes->find('list', ['limit' => 200]);
        $projectStatus = $this->TicketReports->ProjectStatus->find('list', ['limit' => 200]);
        $departments = $this->TicketReports->Departments->find('list', ['limit' => 200]);
        $ticketTypes = $this->TicketReports->TicketTypes->find('list', ['limit' => 200]);
        $ticketStatus = $this->TicketReports->TicketStatus->find('list', ['limit' => 200]);
        $this->set(compact('ticketReport', 'users', 'projects', 'projectTypes', 'projectStatus', 'departments', 'ticketTypes', 'ticketStatus'));
        $this->set('_serialize', ['ticketReport']);
    }

    /**
     * Delete method
     *
     * @param string|null $id Ticket Report id.
     * @return \Cake\Network\Response|null Redirects to index.
     * @throws \Cake\Network\Exception\NotFoundException When record not found.
     */
    public function delete($id = null)
    {
        $this->request->allowMethod(['post', 'delete']);
        $ticketReport = $this->TicketReports->get($id);
        if ($this->TicketReports->delete($ticketReport)) {
            $this->Flash->success(__('The ticket report has been deleted.'));
        } else {
            $this->Flash->error(__('The ticket report could not be deleted. Please, try again.'));
        }
        return $this->redirect(['action' => 'index']);
    }
}
