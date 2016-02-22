<?php
namespace App\Controller;

use App\Controller\AppController;

/**
 * TicketComments Controller
 *
 * @property \App\Model\Table\TicketCommentsTable $TicketComments
 */
class TicketCommentsController extends AppController
{

    /**
     * Index method
     *
     * @return void
     */
    public function index()
    {
        $this->paginate = [
            'contain' => ['Tickets', 'Users', 'TicketStatus']
        ];
        $this->set('ticketComments', $this->paginate($this->TicketComments));
        $this->set('_serialize', ['ticketComments']);
    }

    /**
     * View method
     *
     * @param string|null $id Ticket Comment id.
     * @return void
     * @throws \Cake\Network\Exception\NotFoundException When record not found.
     */
    public function view($id = null)
    {
        $ticketComment = $this->TicketComments->get($id, [
            'contain' => ['Tickets', 'Users', 'TicketStatus']
        ]);
        $this->set('ticketComment', $ticketComment);
        $this->set('_serialize', ['ticketComment']);
    }

    /**
     * Add method
     *
     * @return void Redirects on successful add, renders view otherwise.
     */
    public function add()
    {
        $ticketComment = $this->TicketComments->newEntity();
        if ($this->request->is('post')) {
            $ticketComment = $this->TicketComments->patchEntity($ticketComment, $this->request->data);
            if ($this->TicketComments->save($ticketComment)) {
                $this->Flash->success(__('The ticket comment has been saved.'));
                return $this->redirect(['action' => 'index']);
            } else {
                $this->Flash->error(__('The ticket comment could not be saved. Please, try again.'));
            }
        }
        $tickets = $this->TicketComments->Tickets->find('list', ['limit' => 200]);
        $users = $this->TicketComments->Users->find('list', ['limit' => 200]);
        $ticketStatus = $this->TicketComments->TicketStatus->find('list', ['limit' => 200]);
        $this->set(compact('ticketComment', 'tickets', 'users', 'ticketStatus'));
        $this->set('_serialize', ['ticketComment']);
    }

    /**
     * Edit method
     *
     * @param string|null $id Ticket Comment id.
     * @return void Redirects on successful edit, renders view otherwise.
     * @throws \Cake\Network\Exception\NotFoundException When record not found.
     */
    public function edit($id = null)
    {
        $ticketComment = $this->TicketComments->get($id, [
            'contain' => []
        ]);
        if ($this->request->is(['patch', 'post', 'put'])) {
            $ticketComment = $this->TicketComments->patchEntity($ticketComment, $this->request->data);
            if ($this->TicketComments->save($ticketComment)) {
                $this->Flash->success(__('The ticket comment has been saved.'));
                return $this->redirect(['action' => 'index']);
            } else {
                $this->Flash->error(__('The ticket comment could not be saved. Please, try again.'));
            }
        }
        $tickets = $this->TicketComments->Tickets->find('list', ['limit' => 200]);
        $users = $this->TicketComments->Users->find('list', ['limit' => 200]);
        $ticketStatus = $this->TicketComments->TicketStatus->find('list', ['limit' => 200]);
        $this->set(compact('ticketComment', 'tickets', 'users', 'ticketStatus'));
        $this->set('_serialize', ['ticketComment']);
    }

    /**
     * Delete method
     *
     * @param string|null $id Ticket Comment id.
     * @return \Cake\Network\Response|null Redirects to index.
     * @throws \Cake\Network\Exception\NotFoundException When record not found.
     */
    public function delete($id = null)
    {
        $this->request->allowMethod(['post', 'delete']);
        $ticketComment = $this->TicketComments->get($id);
        if ($this->TicketComments->delete($ticketComment)) {
            $this->Flash->success(__('The ticket comment has been deleted.'));
        } else {
            $this->Flash->error(__('The ticket comment could not be deleted. Please, try again.'));
        }
        return $this->redirect(['action' => 'index']);
    }
}
