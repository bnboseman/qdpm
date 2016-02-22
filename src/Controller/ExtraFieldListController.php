<?php
namespace App\Controller;

use App\Controller\AppController;

/**
 * ExtraFieldList Controller
 *
 * @property \App\Model\Table\ExtraFieldListTable $ExtraFieldList
 */
class ExtraFieldListController extends AppController
{

    /**
     * Index method
     *
     * @return void
     */
    public function index()
    {
        $this->paginate = [
            'contain' => ['ExtraFields', 'Binds']
        ];
        $this->set('extraFieldList', $this->paginate($this->ExtraFieldList));
        $this->set('_serialize', ['extraFieldList']);
    }

    /**
     * View method
     *
     * @param string|null $id Extra Field List id.
     * @return void
     * @throws \Cake\Network\Exception\NotFoundException When record not found.
     */
    public function view($id = null)
    {
        $extraFieldList = $this->ExtraFieldList->get($id, [
            'contain' => ['ExtraFields', 'Binds']
        ]);
        $this->set('extraFieldList', $extraFieldList);
        $this->set('_serialize', ['extraFieldList']);
    }

    /**
     * Add method
     *
     * @return void Redirects on successful add, renders view otherwise.
     */
    public function add()
    {
        $extraFieldList = $this->ExtraFieldList->newEntity();
        if ($this->request->is('post')) {
            $extraFieldList = $this->ExtraFieldList->patchEntity($extraFieldList, $this->request->data);
            if ($this->ExtraFieldList->save($extraFieldList)) {
                $this->Flash->success(__('The extra field list has been saved.'));
                return $this->redirect(['action' => 'index']);
            } else {
                $this->Flash->error(__('The extra field list could not be saved. Please, try again.'));
            }
        }
        $extraFields = $this->ExtraFieldList->ExtraFields->find('list', ['limit' => 200]);
        $binds = $this->ExtraFieldList->Binds->find('list', ['limit' => 200]);
        $this->set(compact('extraFieldList', 'extraFields', 'binds'));
        $this->set('_serialize', ['extraFieldList']);
    }

    /**
     * Edit method
     *
     * @param string|null $id Extra Field List id.
     * @return void Redirects on successful edit, renders view otherwise.
     * @throws \Cake\Network\Exception\NotFoundException When record not found.
     */
    public function edit($id = null)
    {
        $extraFieldList = $this->ExtraFieldList->get($id, [
            'contain' => []
        ]);
        if ($this->request->is(['patch', 'post', 'put'])) {
            $extraFieldList = $this->ExtraFieldList->patchEntity($extraFieldList, $this->request->data);
            if ($this->ExtraFieldList->save($extraFieldList)) {
                $this->Flash->success(__('The extra field list has been saved.'));
                return $this->redirect(['action' => 'index']);
            } else {
                $this->Flash->error(__('The extra field list could not be saved. Please, try again.'));
            }
        }
        $extraFields = $this->ExtraFieldList->ExtraFields->find('list', ['limit' => 200]);
        $binds = $this->ExtraFieldList->Binds->find('list', ['limit' => 200]);
        $this->set(compact('extraFieldList', 'extraFields', 'binds'));
        $this->set('_serialize', ['extraFieldList']);
    }

    /**
     * Delete method
     *
     * @param string|null $id Extra Field List id.
     * @return \Cake\Network\Response|null Redirects to index.
     * @throws \Cake\Network\Exception\NotFoundException When record not found.
     */
    public function delete($id = null)
    {
        $this->request->allowMethod(['post', 'delete']);
        $extraFieldList = $this->ExtraFieldList->get($id);
        if ($this->ExtraFieldList->delete($extraFieldList)) {
            $this->Flash->success(__('The extra field list has been deleted.'));
        } else {
            $this->Flash->error(__('The extra field list could not be deleted. Please, try again.'));
        }
        return $this->redirect(['action' => 'index']);
    }
}
