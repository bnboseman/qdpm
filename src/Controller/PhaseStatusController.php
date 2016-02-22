<?php
namespace App\Controller;

use App\Controller\AppController;

/**
 * PhaseStatus Controller
 *
 * @property \App\Model\Table\PhaseStatusTable $PhaseStatus
 */
class PhaseStatusController extends AppController
{

    /**
     * Index method
     *
     * @return void
     */
    public function index()
    {
        $this->set('phaseStatus', $this->paginate($this->PhaseStatus));
        $this->set('_serialize', ['phaseStatus']);
    }

    /**
     * View method
     *
     * @param string|null $id Phase Status id.
     * @return void
     * @throws \Cake\Network\Exception\NotFoundException When record not found.
     */
    public function view($id = null)
    {
        $phaseStatus = $this->PhaseStatus->get($id, [
            'contain' => ['ProjectPhases']
        ]);
        $this->set('phaseStatus', $phaseStatus);
        $this->set('_serialize', ['phaseStatus']);
    }

    /**
     * Add method
     *
     * @return void Redirects on successful add, renders view otherwise.
     */
    public function add()
    {
        $phaseStatus = $this->PhaseStatus->newEntity();
        if ($this->request->is('post')) {
            $phaseStatus = $this->PhaseStatus->patchEntity($phaseStatus, $this->request->data);
            if ($this->PhaseStatus->save($phaseStatus)) {
                $this->Flash->success(__('The phase status has been saved.'));
                return $this->redirect(['action' => 'index']);
            } else {
                $this->Flash->error(__('The phase status could not be saved. Please, try again.'));
            }
        }
        $this->set(compact('phaseStatus'));
        $this->set('_serialize', ['phaseStatus']);
    }

    /**
     * Edit method
     *
     * @param string|null $id Phase Status id.
     * @return void Redirects on successful edit, renders view otherwise.
     * @throws \Cake\Network\Exception\NotFoundException When record not found.
     */
    public function edit($id = null)
    {
        $phaseStatus = $this->PhaseStatus->get($id, [
            'contain' => []
        ]);
        if ($this->request->is(['patch', 'post', 'put'])) {
            $phaseStatus = $this->PhaseStatus->patchEntity($phaseStatus, $this->request->data);
            if ($this->PhaseStatus->save($phaseStatus)) {
                $this->Flash->success(__('The phase status has been saved.'));
                return $this->redirect(['action' => 'index']);
            } else {
                $this->Flash->error(__('The phase status could not be saved. Please, try again.'));
            }
        }
        $this->set(compact('phaseStatus'));
        $this->set('_serialize', ['phaseStatus']);
    }

    /**
     * Delete method
     *
     * @param string|null $id Phase Status id.
     * @return \Cake\Network\Response|null Redirects to index.
     * @throws \Cake\Network\Exception\NotFoundException When record not found.
     */
    public function delete($id = null)
    {
        $this->request->allowMethod(['post', 'delete']);
        $phaseStatus = $this->PhaseStatus->get($id);
        if ($this->PhaseStatus->delete($phaseStatus)) {
            $this->Flash->success(__('The phase status has been deleted.'));
        } else {
            $this->Flash->error(__('The phase status could not be deleted. Please, try again.'));
        }
        return $this->redirect(['action' => 'index']);
    }
}
