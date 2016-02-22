<?php
namespace App\Controller;

use App\Controller\AppController;

/**
 * DiscussionStatus Controller
 *
 * @property \App\Model\Table\DiscussionStatusTable $DiscussionStatus
 */
class DiscussionStatusController extends AppController
{

    /**
     * Index method
     *
     * @return void
     */
    public function index()
    {
        $this->set('discussionStatus', $this->paginate($this->DiscussionStatus));
        $this->set('_serialize', ['discussionStatus']);
    }

    /**
     * View method
     *
     * @param string|null $id Discussion Status id.
     * @return void
     * @throws \Cake\Network\Exception\NotFoundException When record not found.
     */
    public function view($id = null)
    {
        $discussionStatus = $this->DiscussionStatus->get($id, [
            'contain' => ['DiscussionComments', 'DiscussionReports', 'Discussions']
        ]);
        $this->set('discussionStatus', $discussionStatus);
        $this->set('_serialize', ['discussionStatus']);
    }

    /**
     * Add method
     *
     * @return void Redirects on successful add, renders view otherwise.
     */
    public function add()
    {
        $discussionStatus = $this->DiscussionStatus->newEntity();
        if ($this->request->is('post')) {
            $discussionStatus = $this->DiscussionStatus->patchEntity($discussionStatus, $this->request->data);
            if ($this->DiscussionStatus->save($discussionStatus)) {
                $this->Flash->success(__('The discussion status has been saved.'));
                return $this->redirect(['action' => 'index']);
            } else {
                $this->Flash->error(__('The discussion status could not be saved. Please, try again.'));
            }
        }
        $this->set(compact('discussionStatus'));
        $this->set('_serialize', ['discussionStatus']);
    }

    /**
     * Edit method
     *
     * @param string|null $id Discussion Status id.
     * @return void Redirects on successful edit, renders view otherwise.
     * @throws \Cake\Network\Exception\NotFoundException When record not found.
     */
    public function edit($id = null)
    {
        $discussionStatus = $this->DiscussionStatus->get($id, [
            'contain' => []
        ]);
        if ($this->request->is(['patch', 'post', 'put'])) {
            $discussionStatus = $this->DiscussionStatus->patchEntity($discussionStatus, $this->request->data);
            if ($this->DiscussionStatus->save($discussionStatus)) {
                $this->Flash->success(__('The discussion status has been saved.'));
                return $this->redirect(['action' => 'index']);
            } else {
                $this->Flash->error(__('The discussion status could not be saved. Please, try again.'));
            }
        }
        $this->set(compact('discussionStatus'));
        $this->set('_serialize', ['discussionStatus']);
    }

    /**
     * Delete method
     *
     * @param string|null $id Discussion Status id.
     * @return \Cake\Network\Response|null Redirects to index.
     * @throws \Cake\Network\Exception\NotFoundException When record not found.
     */
    public function delete($id = null)
    {
        $this->request->allowMethod(['post', 'delete']);
        $discussionStatus = $this->DiscussionStatus->get($id);
        if ($this->DiscussionStatus->delete($discussionStatus)) {
            $this->Flash->success(__('The discussion status has been deleted.'));
        } else {
            $this->Flash->error(__('The discussion status could not be deleted. Please, try again.'));
        }
        return $this->redirect(['action' => 'index']);
    }
}
