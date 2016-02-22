<?php
namespace App\Controller;

use App\Controller\AppController;

/**
 * ProjectComments Controller
 *
 * @property \App\Model\Table\ProjectCommentsTable $ProjectComments
 */
class ProjectCommentsController extends AppController
{

    /**
     * Index method
     *
     * @return void
     */
    public function index()
    {
        $this->paginate = [
            'contain' => ['Projects']
        ];
        $this->set('projectComments', $this->paginate($this->ProjectComments));
        $this->set('_serialize', ['projectComments']);
    }

    /**
     * View method
     *
     * @param string|null $id Project Comment id.
     * @return void
     * @throws \Cake\Network\Exception\NotFoundException When record not found.
     */
    public function view($id = null)
    {
        $projectComment = $this->ProjectComments->get($id, [
            'contain' => ['Projects']
        ]);
        $this->set('projectComment', $projectComment);
        $this->set('_serialize', ['projectComment']);
    }

    /**
     * Add method
     *
     * @return void Redirects on successful add, renders view otherwise.
     */
    public function add()
    {
        $projectComment = $this->ProjectComments->newEntity();
        if ($this->request->is('post')) {
            $projectComment = $this->ProjectComments->patchEntity($projectComment, $this->request->data);
            if ($this->ProjectComments->save($projectComment)) {
                $this->Flash->success(__('The project comment has been saved.'));
                return $this->redirect(['action' => 'index']);
            } else {
                $this->Flash->error(__('The project comment could not be saved. Please, try again.'));
            }
        }
        $projects = $this->ProjectComments->Projects->find('list', ['limit' => 200]);
        $this->set(compact('projectComment', 'projects'));
        $this->set('_serialize', ['projectComment']);
    }

    /**
     * Edit method
     *
     * @param string|null $id Project Comment id.
     * @return void Redirects on successful edit, renders view otherwise.
     * @throws \Cake\Network\Exception\NotFoundException When record not found.
     */
    public function edit($id = null)
    {
        $projectComment = $this->ProjectComments->get($id, [
            'contain' => []
        ]);
        if ($this->request->is(['patch', 'post', 'put'])) {
            $projectComment = $this->ProjectComments->patchEntity($projectComment, $this->request->data);
            if ($this->ProjectComments->save($projectComment)) {
                $this->Flash->success(__('The project comment has been saved.'));
                return $this->redirect(['action' => 'index']);
            } else {
                $this->Flash->error(__('The project comment could not be saved. Please, try again.'));
            }
        }
        $projects = $this->ProjectComments->Projects->find('list', ['limit' => 200]);
        $this->set(compact('projectComment', 'projects'));
        $this->set('_serialize', ['projectComment']);
    }

    /**
     * Delete method
     *
     * @param string|null $id Project Comment id.
     * @return \Cake\Network\Response|null Redirects to index.
     * @throws \Cake\Network\Exception\NotFoundException When record not found.
     */
    public function delete($id = null)
    {
        $this->request->allowMethod(['post', 'delete']);
        $projectComment = $this->ProjectComments->get($id);
        if ($this->ProjectComments->delete($projectComment)) {
            $this->Flash->success(__('The project comment has been deleted.'));
        } else {
            $this->Flash->error(__('The project comment could not be deleted. Please, try again.'));
        }
        return $this->redirect(['action' => 'index']);
    }
}
