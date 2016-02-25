<?php
namespace App\Controller;

use App\Controller\AppController;
use Cake\Network\Response;

/**
 * Projects Controller
 *
 * @property \App\Model\Table\ProjectsTable $Projects
 */
class ProjectsController extends AppController
{

	public function isAuthorized($user) {
		$action = $this->request->params ['action'];

		// Allow all users to see index
		if ( in_array ( $action, ['index'] )  && !empty ( $user )) {
			return true;
		}

		if ( in_array ( $action, ['view', 'delete'] )  && !empty ( $user )) {
			return true;
		}


		return parent::isAuthorized ( $user );
	}

    /**
     * Index method
     *
     * @return void
     */
    public function index()
    {
        $this->set('projects', $this->Projects->find('all', ['contain' =>['ProjectStatus','ProjectTypes','Creator', 'Team']])->toArray());
        $this->set('_serialize', ['projects']);
    }

    /**
     * View method
     *
     * @param string|null $id Project id.
     * @return void
     * @throws \Cake\Network\Exception\NotFoundException When record not found.
     */
    public function view($id = null)
    {
        $project = $this->Projects->get($id, [
            'contain' => ['ProjectStatus',
            		'ProjectTypes',
            		'Attachments',
            		'ProjectComments',
            		'Tasks',
            		'Tasks.TaskTypes',
            		'Tasks.TaskGroups',
            		'Tasks.ProjectPhases',
            		'Tasks.TaskPriority',
            		'Tasks.AssignedTo',
            		'Tasks.TaskStatus',
            		'Tickets']
        ]);
        $this->set('project', $project);
        $this->set('_serialize', ['project']);
    }

    /**
     * Add method
     *
     * @return void Redirects on successful add, renders view otherwise.
     */
    public function add()
    {
        $project = $this->Projects->newEntity();
        if ($this->request->is('post')) {
            $project = $this->Projects->patchEntity($project, $this->request->data);
            if ($this->Projects->save($project)) {
                $this->Flash->success(__('The project has been saved.'));
                return $this->redirect(['action' => 'index']);
            } else {
                $this->Flash->error(__('The project could not be saved. Please, try again.'));
            }
        }
        $projectStatus = $this->Projects->Status->find('list', ['limit' => 200]);
        $projectTypes = $this->Projects->Types->find('list', ['limit' => 200]);
        $this->set(compact('project', 'projectStatus', 'projectTypes'));
        $this->set('_serialize', ['project']);
    }

    /**
     * Edit method
     *
     * @param string|null $id Project id.
     * @return void Redirects on successful edit, renders view otherwise.
     * @throws \Cake\Network\Exception\NotFoundException When record not found.
     */
    public function edit($id = null)
    {
        $project = $this->Projects->get($id, [
            'contain' => []
        ]);
        if ($this->request->is(['patch', 'post', 'put'])) {
            $project = $this->Projects->patchEntity($project, $this->request->data);
            if ($this->Projects->save($project)) {
                $this->Flash->success(__('The project has been saved.'));
                return $this->redirect(['action' => 'index']);
            } else {
                $this->Flash->error(__('The project could not be saved. Please, try again.'));
            }
        }
        $projectStatus = $this->Projects->Status->find('list', ['limit' => 200]);
        $projectTypes = $this->Projects->Types->find('list', ['limit' => 200]);
        $this->set(compact('project', 'projectStatus', 'projectTypes'));
        $this->set('_serialize', ['project']);
    }

    /**
     * Delete method
     *
     * @param string|null $id Project id.
     * @return \Cake\Network\Response|null Redirects to index.
     * @throws \Cake\Network\Exception\NotFoundException When record not found.
     */
    public function delete($id = null)
    {
        $this->request->allowMethod(['post', 'delete']);
        $project = $this->Projects->get($id);
        if ($this->Projects->delete($project)) {
        	return new Response([
        			'type' => 'application/json',
        			'body' =>json_encode(['success' => 'The project has been deleted.',
        								  'projects' => $this->Projects->find('all')
        			]),
        			'charset' => 'UTF-8'
        	]);
        } else {
        	return new Response([
        			'type' => 'application/json',
        			'body' =>json_encode(['error' => 'The project could not be deleted. Please, try again.'
        			]),
        			'charset' => 'UTF-8'
        	]);
        }
        return;
    }
}
