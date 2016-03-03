<?php
namespace App\Controller;

use App\Controller\AppController;

/**
 * Tasks Controller
 *
 * @property \App\Model\Table\TasksTable $Tasks
 */
class TasksController extends AppController
{

	public function isAuthorized($user) {
		if ($user) {
			return true;
		}
	}
    /**
     * Index method
     *
     * @return void
     */
    public function index()
    {
        $this->set('tasks', $this->Tasks->find('all',
        		['contain' =>
        				['Projects',
        				 'TaskStatus',
        				 'TaskPriority',
        				 'TaskTypes',
        				 'TaskLabels',
        				 'TaskGroups',
        				 'ProjectPhases',
        				 'Versions',
        				 'Projects',
        				 'AssignedTo']
    ]));
        $this->set('_serialize', ['tasks']);
    }

    /**
     * View method
     *
     * @param string|null $id Task id.
     * @return void
     * @throws \Cake\Network\Exception\NotFoundException When record not found.
     */
    public function view($id = null)
    {
        $task = $this->Tasks->get($id,
        		['contain' =>
        		['Projects',
        				'TaskStatus',
        				'TaskPriority',
        				'TaskTypes',
        				'TaskLabels',
        				'TaskGroups',
        				'ProjectPhases',
        				'TaskComments',
        				'TaskComments.Attachments',
        				'TaskComments.Users',
        				'TaskComments.TaskStatus',
        				'TaskComments.TaskPriority',
        				'Tickets',
        				'Versions',
        				'Creators',
        				'AssignedTo']
        				]
        		);
        $this->set('task', $task);
        $this->set('_serialize', ['task']);
    }

    /**
     * Add method
     *
     * @return void Redirects on successful add, renders view otherwise.
     */
    public function add()
    {
        $task = $this->Tasks->newEntity();
        if ($this->request->is('post')) {
            $task = $this->Tasks->patchEntity($task, $this->request->data);
            if ($this->Tasks->save($task)) {
                $this->Flash->success(__('The task has been saved.'));
                return $this->redirect(['action' => 'index']);
            } else {
                $this->Flash->error(__('The task could not be saved. Please, try again.'));
            }
        }
        $projects = $this->Tasks->Projects->find('list', ['limit' => 200]);
        $Status = $this->Tasks->TaskStatus->find('list', ['limit' => 200]);
        $Priority = $this->Tasks->TaskPriority->find('list', ['limit' => 200]);
        $Types = $this->Tasks->TaskTypes->find('list', ['limit' => 200]);
        $Labels = $this->Tasks->TaskLabels->find('list', ['limit' => 200]);
        $Groups = $this->Tasks->TaskGroups->find('list', ['limit' => 200]);
        $projectPhases = $this->Tasks->ProjectPhases->find('list', ['limit' => 200]);
        $versions = $this->Tasks->Versions->find('list', ['limit' => 200]);
        $tickets = $this->Tasks->Tickets->find('list', ['limit' => 200]);
        $discussions = $this->Tasks->Discussions->find('list', ['limit' => 200]);
        $this->set(compact('task', 'projects', 'Status', 'Priority', 'Types', 'Labels', 'Groups', 'projectPhases', 'versions', 'tickets', 'discussions'));
        $this->set('_serialize', ['task']);
    }

    /**
     * Edit method
     *
     * @param string|null $id Task id.
     * @return void Redirects on successful edit, renders view otherwise.
     * @throws \Cake\Network\Exception\NotFoundException When record not found.
     */
    public function edit($id = null)
    {
        $task = $this->Tasks->get($id, [
            'contain' => []
        ]);
        if ($this->request->is(['patch', 'post', 'put'])) {
            $task = $this->Tasks->patchEntity($task, $this->request->data);
            if ($this->Tasks->save($task)) {
                $this->Flash->success(__('The task has been saved.'));
                return $this->redirect(['action' => 'index']);
            } else {
                $this->Flash->error(__('The task could not be saved. Please, try again.'));
            }
        }
        $projects = $this->Tasks->Projects->find('list', ['limit' => 200]);
        $status = $this->Tasks->TaskStatus->find('list', ['limit' => 200]);
        $priority = $this->Tasks->TaskPriority->find('list', ['limit' => 200]);
        $types = $this->Tasks->TaskTypes->find('list', ['limit' => 200]);
        $labels = $this->Tasks->TaskLabels->find('list', ['limit' => 200]);
        $groups = $this->Tasks->TaskGroups->find('list', ['limit' => 200]);
        $projectPhases = $this->Tasks->ProjectPhases->find('list', ['limit' => 200]);
        $versions = $this->Tasks->Versions->find('list', ['limit' => 200]);
        $tickets = $this->Tasks->Tickets->find('list', ['limit' => 200]);
        $discussions = $this->Tasks->Discussions->find('list', ['limit' => 200]);
        $this->set(compact('task', 'projects', 'Status', 'priority', 'types', 'labels', 'groups', 'projectPhases', 'versions', 'tickets', 'discussions'));
        $this->set('_serialize', ['task']);
    }

    /**
     * Delete method
     *
     * @param string|null $id Task id.
     * @return \Cake\Network\Response|null Redirects to index.
     * @throws \Cake\Network\Exception\NotFoundException When record not found.
     */
    public function delete($id = null)
    {
        $this->request->allowMethod(['post', 'delete']);
        $task = $this->Tasks->get($id);
        if ($this->Tasks->delete($task)) {
            $this->Flash->success(__('The task has been deleted.'));
        } else {
            $this->Flash->error(__('The task could not be deleted. Please, try again.'));
        }
        return $this->redirect(['action' => 'index']);
    }
}
