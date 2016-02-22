<?php
namespace App\Controller;

use App\Controller\AppController;

/**
 * ExtraFields Controller
 *
 * @property \App\Model\Table\ExtraFieldsTable $ExtraFields
 */
class ExtraFieldsController extends AppController
{

    /**
     * Index method
     *
     * @return void
     */
    public function index()
    {
        $this->set('extraFields', $this->paginate($this->ExtraFields));
        $this->set('_serialize', ['extraFields']);
    }

    /**
     * View method
     *
     * @param string|null $id Extra Field id.
     * @return void
     * @throws \Cake\Network\Exception\NotFoundException When record not found.
     */
    public function view($id = null)
    {
        $extraField = $this->ExtraFields->get($id, [
            'contain' => ['ExtraFieldList']
        ]);
        $this->set('extraField', $extraField);
        $this->set('_serialize', ['extraField']);
    }

    /**
     * Add method
     *
     * @return void Redirects on successful add, renders view otherwise.
     */
    public function add()
    {
        $extraField = $this->ExtraFields->newEntity();
        if ($this->request->is('post')) {
            $extraField = $this->ExtraFields->patchEntity($extraField, $this->request->data);
            if ($this->ExtraFields->save($extraField)) {
                $this->Flash->success(__('The extra field has been saved.'));
                return $this->redirect(['action' => 'index']);
            } else {
                $this->Flash->error(__('The extra field could not be saved. Please, try again.'));
            }
        }
        $this->set(compact('extraField'));
        $this->set('_serialize', ['extraField']);
    }

    /**
     * Edit method
     *
     * @param string|null $id Extra Field id.
     * @return void Redirects on successful edit, renders view otherwise.
     * @throws \Cake\Network\Exception\NotFoundException When record not found.
     */
    public function edit($id = null)
    {
        $extraField = $this->ExtraFields->get($id, [
            'contain' => []
        ]);
        if ($this->request->is(['patch', 'post', 'put'])) {
            $extraField = $this->ExtraFields->patchEntity($extraField, $this->request->data);
            if ($this->ExtraFields->save($extraField)) {
                $this->Flash->success(__('The extra field has been saved.'));
                return $this->redirect(['action' => 'index']);
            } else {
                $this->Flash->error(__('The extra field could not be saved. Please, try again.'));
            }
        }
        $this->set(compact('extraField'));
        $this->set('_serialize', ['extraField']);
    }

    /**
     * Delete method
     *
     * @param string|null $id Extra Field id.
     * @return \Cake\Network\Response|null Redirects to index.
     * @throws \Cake\Network\Exception\NotFoundException When record not found.
     */
    public function delete($id = null)
    {
        $this->request->allowMethod(['post', 'delete']);
        $extraField = $this->ExtraFields->get($id);
        if ($this->ExtraFields->delete($extraField)) {
            $this->Flash->success(__('The extra field has been deleted.'));
        } else {
            $this->Flash->error(__('The extra field could not be deleted. Please, try again.'));
        }
        return $this->redirect(['action' => 'index']);
    }
}
