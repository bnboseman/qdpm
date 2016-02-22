<?php
namespace App\Controller;

use App\Controller\AppController;

/**
 * ProjectPhases Controller
 *
 * @property \App\Model\Table\ProjectPhasesTable $ProjectPhases
 */
class ProjectPhasesController extends AppController
{

    /**
     * Index method
     *
     * @return void
     */
    public function index()
    {
        $this->paginate = [
            'contain' => ['Projects', 'PhaseStatus']
        ];
        $this->set('projectPhases', $this->paginate($this->ProjectPhases));
        $this->set('_serialize', ['projectPhases']);
    }

    /**
     * View method
     *
     * @param string|null $id Project Phase id.
     * @return void
     * @throws \Cake\Network\Exception\NotFoundException When record not found.
     */
    public function view($id = null)
    {
        $projectPhase = $this->ProjectPhases->get($id, [
            'contain' => ['Projects', 'PhaseStatus', 'Tasks']
        ]);
        $this->set('projectPhase', $projectPhase);
        $this->set('_serialize', ['projectPhase']);
    }

    /**
     * Add method
     *
     * @return void Redirects on successful add, renders view otherwise.
     */
    public function add()
    {
        $projectPhase = $this->ProjectPhases->newEntity();
        if ($this->request->is('post')) {
            $projectPhase = $this->ProjectPhases->patchEntity($projectPhase, $this->request->data);
            if ($this->ProjectPhases->save($projectPhase)) {
                $this->Flash->success(__('The project phase has been saved.'));
                return $this->redirect(['action' => 'index']);
            } else {
                $this->Flash->error(__('The project phase could not be saved. Please, try again.'));
            }
        }
        $projects = $this->ProjectPhases->Projects->find('list', ['limit' => 200]);
        $phaseStatus = $this->ProjectPhases->PhaseStatus->find('list', ['limit' => 200]);
        $this->set(compact('projectPhase', 'projects', 'phaseStatus'));
        $this->set('_serialize', ['projectPhase']);
    }

    /**
     * Edit method
     *
     * @param string|null $id Project Phase id.
     * @return void Redirects on successful edit, renders view otherwise.
     * @throws \Cake\Network\Exception\NotFoundException When record not found.
     */
    public function edit($id = null)
    {
        $projectPhase = $this->ProjectPhases->get($id, [
            'contain' => []
        ]);
        if ($this->request->is(['patch', 'post', 'put'])) {
            $projectPhase = $this->ProjectPhases->patchEntity($projectPhase, $this->request->data);
            if ($this->ProjectPhases->save($projectPhase)) {
                $this->Flash->success(__('The project phase has been saved.'));
                return $this->redirect(['action' => 'index']);
            } else {
                $this->Flash->error(__('The project phase could not be saved. Please, try again.'));
            }
        }
        $projects = $this->ProjectPhases->Projects->find('list', ['limit' => 200]);
        $phaseStatus = $this->ProjectPhases->PhaseStatus->find('list', ['limit' => 200]);
        $this->set(compact('projectPhase', 'projects', 'phaseStatus'));
        $this->set('_serialize', ['projectPhase']);
    }

    /**
     * Delete method
     *
     * @param string|null $id Project Phase id.
     * @return \Cake\Network\Response|null Redirects to index.
     * @throws \Cake\Network\Exception\NotFoundException When record not found.
     */
    public function delete($id = null)
    {
        $this->request->allowMethod(['post', 'delete']);
        $projectPhase = $this->ProjectPhases->get($id);
        if ($this->ProjectPhases->delete($projectPhase)) {
            $this->Flash->success(__('The project phase has been deleted.'));
        } else {
            $this->Flash->error(__('The project phase could not be deleted. Please, try again.'));
        }
        return $this->redirect(['action' => 'index']);
    }
}
