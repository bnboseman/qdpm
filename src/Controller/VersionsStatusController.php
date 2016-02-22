<?php
namespace App\Controller;

use App\Controller\AppController;

/**
 * VersionsStatus Controller
 *
 * @property \App\Model\Table\VersionsStatusTable $VersionsStatus
 */
class VersionsStatusController extends AppController
{

    /**
     * Index method
     *
     * @return void
     */
    public function index()
    {
        $this->set('versionsStatus', $this->paginate($this->VersionsStatus));
        $this->set('_serialize', ['versionsStatus']);
    }

    /**
     * View method
     *
     * @param string|null $id Versions Status id.
     * @return void
     * @throws \Cake\Network\Exception\NotFoundException When record not found.
     */
    public function view($id = null)
    {
        $versionsStatus = $this->VersionsStatus->get($id, [
            'contain' => ['Versions']
        ]);
        $this->set('versionsStatus', $versionsStatus);
        $this->set('_serialize', ['versionsStatus']);
    }

    /**
     * Add method
     *
     * @return void Redirects on successful add, renders view otherwise.
     */
    public function add()
    {
        $versionsStatus = $this->VersionsStatus->newEntity();
        if ($this->request->is('post')) {
            $versionsStatus = $this->VersionsStatus->patchEntity($versionsStatus, $this->request->data);
            if ($this->VersionsStatus->save($versionsStatus)) {
                $this->Flash->success(__('The versions status has been saved.'));
                return $this->redirect(['action' => 'index']);
            } else {
                $this->Flash->error(__('The versions status could not be saved. Please, try again.'));
            }
        }
        $this->set(compact('versionsStatus'));
        $this->set('_serialize', ['versionsStatus']);
    }

    /**
     * Edit method
     *
     * @param string|null $id Versions Status id.
     * @return void Redirects on successful edit, renders view otherwise.
     * @throws \Cake\Network\Exception\NotFoundException When record not found.
     */
    public function edit($id = null)
    {
        $versionsStatus = $this->VersionsStatus->get($id, [
            'contain' => []
        ]);
        if ($this->request->is(['patch', 'post', 'put'])) {
            $versionsStatus = $this->VersionsStatus->patchEntity($versionsStatus, $this->request->data);
            if ($this->VersionsStatus->save($versionsStatus)) {
                $this->Flash->success(__('The versions status has been saved.'));
                return $this->redirect(['action' => 'index']);
            } else {
                $this->Flash->error(__('The versions status could not be saved. Please, try again.'));
            }
        }
        $this->set(compact('versionsStatus'));
        $this->set('_serialize', ['versionsStatus']);
    }

    /**
     * Delete method
     *
     * @param string|null $id Versions Status id.
     * @return \Cake\Network\Response|null Redirects to index.
     * @throws \Cake\Network\Exception\NotFoundException When record not found.
     */
    public function delete($id = null)
    {
        $this->request->allowMethod(['post', 'delete']);
        $versionsStatus = $this->VersionsStatus->get($id);
        if ($this->VersionsStatus->delete($versionsStatus)) {
            $this->Flash->success(__('The versions status has been deleted.'));
        } else {
            $this->Flash->error(__('The versions status could not be deleted. Please, try again.'));
        }
        return $this->redirect(['action' => 'index']);
    }
}
