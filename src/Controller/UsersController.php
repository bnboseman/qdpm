<?php
namespace App\Controller;

use App\Controller\AppController;

/**
 * Users Controller
 *
 * @property \App\Model\Table\UsersTable $Users
 */
class UsersController extends AppController
{
	public function isAuthorized($user) {
		$action = $this->request->params ['action'];

		if (in_array ( $action, ['login'] ) ) {
			return true;
		}
		if (in_array ( $action, ['logout','index'] ) && ! empty ( $user )) {
			return true;
		}

		return parent::isAuthorized($user);
	}

    public function index()
    {
        $this->paginate = [
            'contain' => ['UserGroups']
        ];
        $this->set('users', $this->paginate($this->Users));
        $this->set('_serialize', ['users']);
    }

    public function view($id = null)
    {
        $user = $this->Users->get($id, [
            'contain' => ['UserGroups', 'Departments', 'DiscussionComments', 'DiscussionReports', 'Discussions', 'Events', 'ProjectReports', 'TicketComments', 'TicketReports', 'Tickets', 'UserReports']
        ]);
        $this->set('user', $user);
        $this->set('_serialize', ['user']);
    }

    public function add()
    {
        $user = $this->Users->newEntity();
        if ($this->request->is('post')) {
            $user = $this->Users->patchEntity($user, $this->request->data);
            if ($this->Users->save($user)) {
                $this->Flash->success(__('The user has been saved.'));
                return $this->redirect(['action' => 'index']);
            } else {
                $this->Flash->error(__('The user could not be saved. Please, try again.'));
            }
        }
        $userGroups = $this->Users->UserGroups->find('list', ['limit' => 200]);
        $this->set(compact('user', 'userGroups'));
        $this->set('_serialize', ['user']);
    }

    public function edit($id = null)
    {
        $user = $this->Users->get($id, [
            'contain' => []
        ]);
        if ($this->request->is(['patch', 'post', 'put'])) {
            $user = $this->Users->patchEntity($user, $this->request->data);
            if ($this->Users->save($user)) {
                $this->Flash->success(__('The user has been saved.'));
                return $this->redirect(['action' => 'index']);
            } else {
                $this->Flash->error(__('The user could not be saved. Please, try again.'));
            }
        }
        $userGroups = $this->Users->UserGroups->find('list', ['limit' => 200]);
        $this->set(compact('user', 'userGroups'));
        $this->set('_serialize', ['user']);
    }

    public function delete($id = null)
    {
        $this->request->allowMethod(['post', 'delete']);
        $user = $this->Users->get($id);
        if ($this->Users->delete($user)) {
            $this->Flash->success(__('The user has been deleted.'));
        } else {
            $this->Flash->error(__('The user could not be deleted. Please, try again.'));
        }
        return $this->redirect(['action' => 'index']);
    }

    public function login() {
    	if ($this->request->is ( 'post' )) {
    		$user = $this->Auth->identify ();
    		if ($user) {
    			$this->Auth->setUser ( $this->Users->get ( $user ['id'], [
    					'contain' => [
    							'Department',
    							'UserGroup'
    					]
    			] )->toArray () );
    			if ($this->Auth->redirectUrl () !== "/users/logout") {
    				return $this->redirect ( $this->Auth->redirectUrl () );
    			} else {
    				return $this->redirect ( $this->Auth->redirectUrl () );
    			}
    		}
    		if ($user ['role_id'] == 6) {
    			$this->Flash->error ( 'Your account has been disabled.' );
    		} else {
    			$this->Flash->error ( 'Your username or password is incorrect.' );
    		}
    	}
    }
    public function logout() {
    	$this->Flash->success ( 'You are now logged out.' );
    	return $this->redirect ( $this->Auth->logout() );
    }
}
