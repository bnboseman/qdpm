<?php
namespace App\Controller;

use App\Controller\AppController;

/**
 * ProjectStatus Controller
 *
 * @property \App\Model\Table\ProjectStatusTable $ProjectStatus
 */
class ProjectStatusController extends AppController
{

	public function isAuthorized($user) {
		$action = $this->request->params ['action'];

		// Allow all users to see index
		if ( in_array ( $action, ['index', 'view'] )  && !empty ( $user )) {
			return true;
		}

		if ( in_array ( $action, ['delete'] )  && !empty ( $user )) {
			return true;
		}


		return parent::isAuthorized ( $user );
	}

    /**
     * Index method
     *
     * @return \Cake\Network\Response|null
     */
    public function index()
    {
        $projectStatus = $this->ProjectStatus->find('all',  ['fields' => ['id', 'name']])->where(['active' => true])->order('sort_order');
        $defaultStatus = $this->ProjectStatus->find('all', ['conditions' => ['default_value' => true], 'fields' => ['id', 'name']]);
        $this->set(compact('projectStatus', 'defaultStatus'));
        $this->set('_serialize', ['projectStatus', 'defaultStatus']);
    }

    /**
     * Add method
     *
     * @return \Cake\Network\Response|void Redirects on successful add, renders view otherwise.
     */
    public function add()
    {
        $projectStatus = $this->ProjectStatus->newEntity();
        if ($this->request->is('post')) {
            $projectStatus = $this->ProjectStatus->patchEntity($projectStatus, $this->request->data);
            if ($this->ProjectStatus->save($projectStatus)) {
                $this->Flash->success(__('The project status has been saved.'));
                return $this->redirect(['action' => 'index']);
            } else {
                $this->Flash->error(__('The project status could not be saved. Please, try again.'));
            }
        }
        $this->set(compact('projectStatus'));
        $this->set('_serialize', ['projectStatus']);
    }

    /**
     * Edit method
     *
     * @param string|null $id Project Status id.
     * @return \Cake\Network\Response|void Redirects on successful edit, renders view otherwise.
     * @throws \Cake\Network\Exception\NotFoundException When record not found.
     */
    public function edit($id = null)
    {
        $projectStatus = $this->ProjectStatus->get($id, [
            'contain' => []
        ]);
        if ($this->request->is(['patch', 'post', 'put'])) {
            $projectStatus = $this->ProjectStatus->patchEntity($projectStatus, $this->request->data);
            if ($this->ProjectStatus->save($projectStatus)) {
                $this->Flash->success(__('The project status has been saved.'));
                return $this->redirect(['action' => 'index']);
            } else {
                $this->Flash->error(__('The project status could not be saved. Please, try again.'));
            }
        }
        $this->set(compact('projectStatus'));
        $this->set('_serialize', ['projectStatus']);
    }

    /**
     * Delete method
     *
     * @param string|null $id Project Status id.
     * @return \Cake\Network\Response|null Redirects to index.
     * @throws \Cake\Datasource\Exception\RecordNotFoundException When record not found.
     */
    public function delete($id = null)
    {
        $this->request->allowMethod(['post', 'delete']);
        $projectStatus = $this->ProjectStatus->get($id);
        if ($this->ProjectStatus->delete($projectStatus)) {
            $this->Flash->success(__('The project status has been deleted.'));
        } else {
            $this->Flash->error(__('The project status could not be deleted. Please, try again.'));
        }
        return $this->redirect(['action' => 'index']);
    }
}
