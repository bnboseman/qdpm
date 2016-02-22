<?php
namespace App\Controller;

use App\Controller\AppController;

/**
 * TicketStatus Controller
 *
 * @property \App\Model\Table\TicketStatusTable $TicketStatus
 */
class TicketStatusController extends AppController
{

    /**
     * Index method
     *
     * @return void
     */
    public function index()
    {
        $this->set('ticketStatus', $this->paginate($this->TicketStatus));
        $this->set('_serialize', ['ticketStatus']);
    }

    /**
     * View method
     *
     * @param string|null $id Ticket Status id.
     * @return void
     * @throws \Cake\Network\Exception\NotFoundException When record not found.
     */
    public function view($id = null)
    {
        $ticketStatus = $this->TicketStatus->get($id, [
            'contain' => ['TicketComments', 'TicketReports', 'Tickets']
        ]);
        $this->set('ticketStatus', $ticketStatus);
        $this->set('_serialize', ['ticketStatus']);
    }

    /**
     * Add method
     *
     * @return void Redirects on successful add, renders view otherwise.
     */
    public function add()
    {
        $ticketStatus = $this->TicketStatus->newEntity();
        if ($this->request->is('post')) {
            $ticketStatus = $this->TicketStatus->patchEntity($ticketStatus, $this->request->data);
            if ($this->TicketStatus->save($ticketStatus)) {
                $this->Flash->success(__('The ticket status has been saved.'));
                return $this->redirect(['action' => 'index']);
            } else {
                $this->Flash->error(__('The ticket status could not be saved. Please, try again.'));
            }
        }
        $this->set(compact('ticketStatus'));
        $this->set('_serialize', ['ticketStatus']);
    }

    /**
     * Edit method
     *
     * @param string|null $id Ticket Status id.
     * @return void Redirects on successful edit, renders view otherwise.
     * @throws \Cake\Network\Exception\NotFoundException When record not found.
     */
    public function edit($id = null)
    {
        $ticketStatus = $this->TicketStatus->get($id, [
            'contain' => []
        ]);
        if ($this->request->is(['patch', 'post', 'put'])) {
            $ticketStatus = $this->TicketStatus->patchEntity($ticketStatus, $this->request->data);
            if ($this->TicketStatus->save($ticketStatus)) {
                $this->Flash->success(__('The ticket status has been saved.'));
                return $this->redirect(['action' => 'index']);
            } else {
                $this->Flash->error(__('The ticket status could not be saved. Please, try again.'));
            }
        }
        $this->set(compact('ticketStatus'));
        $this->set('_serialize', ['ticketStatus']);
    }

    /**
     * Delete method
     *
     * @param string|null $id Ticket Status id.
     * @return \Cake\Network\Response|null Redirects to index.
     * @throws \Cake\Network\Exception\NotFoundException When record not found.
     */
    public function delete($id = null)
    {
        $this->request->allowMethod(['post', 'delete']);
        $ticketStatus = $this->TicketStatus->get($id);
        if ($this->TicketStatus->delete($ticketStatus)) {
            $this->Flash->success(__('The ticket status has been deleted.'));
        } else {
            $this->Flash->error(__('The ticket status could not be deleted. Please, try again.'));
        }
        return $this->redirect(['action' => 'index']);
    }
}
