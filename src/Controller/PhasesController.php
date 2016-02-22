<?php
namespace App\Controller;

use App\Controller\AppController;

/**
 * Phases Controller
 *
 * @property \App\Model\Table\PhasesTable $Phases
 */
class PhasesController extends AppController
{

    /**
     * Index method
     *
     * @return void
     */
    public function index()
    {
        $this->set('phases', $this->paginate($this->Phases));
        $this->set('_serialize', ['phases']);
    }

    /**
     * View method
     *
     * @param string|null $id Phase id.
     * @return void
     * @throws \Cake\Network\Exception\NotFoundException When record not found.
     */
    public function view($id = null)
    {
        $phase = $this->Phases->get($id, [
            'contain' => []
        ]);
        $this->set('phase', $phase);
        $this->set('_serialize', ['phase']);
    }

    /**
     * Add method
     *
     * @return void Redirects on successful add, renders view otherwise.
     */
    public function add()
    {
        $phase = $this->Phases->newEntity();
        if ($this->request->is('post')) {
            $phase = $this->Phases->patchEntity($phase, $this->request->data);
            if ($this->Phases->save($phase)) {
                $this->Flash->success(__('The phase has been saved.'));
                return $this->redirect(['action' => 'index']);
            } else {
                $this->Flash->error(__('The phase could not be saved. Please, try again.'));
            }
        }
        $this->set(compact('phase'));
        $this->set('_serialize', ['phase']);
    }

    /**
     * Edit method
     *
     * @param string|null $id Phase id.
     * @return void Redirects on successful edit, renders view otherwise.
     * @throws \Cake\Network\Exception\NotFoundException When record not found.
     */
    public function edit($id = null)
    {
        $phase = $this->Phases->get($id, [
            'contain' => []
        ]);
        if ($this->request->is(['patch', 'post', 'put'])) {
            $phase = $this->Phases->patchEntity($phase, $this->request->data);
            if ($this->Phases->save($phase)) {
                $this->Flash->success(__('The phase has been saved.'));
                return $this->redirect(['action' => 'index']);
            } else {
                $this->Flash->error(__('The phase could not be saved. Please, try again.'));
            }
        }
        $this->set(compact('phase'));
        $this->set('_serialize', ['phase']);
    }

    /**
     * Delete method
     *
     * @param string|null $id Phase id.
     * @return \Cake\Network\Response|null Redirects to index.
     * @throws \Cake\Network\Exception\NotFoundException When record not found.
     */
    public function delete($id = null)
    {
        $this->request->allowMethod(['post', 'delete']);
        $phase = $this->Phases->get($id);
        if ($this->Phases->delete($phase)) {
            $this->Flash->success(__('The phase has been deleted.'));
        } else {
            $this->Flash->error(__('The phase could not be deleted. Please, try again.'));
        }
        return $this->redirect(['action' => 'index']);
    }
}
