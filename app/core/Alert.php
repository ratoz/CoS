<?php 

class Alert {
    public function setMsg($msg, $type, $alert) {
        $_SESSION['alert'] = [
            'msg' => $msg,
            'type' => $type,
            'alert' => $alert
        ];
    }

    public function showMessage() {
        if(isset($_SESSION['alert'])) {
            echo '<div class="alert alert-'.$_SESSION['alert']['alert'].' alert-dismissible fade show mt-4" role="alert">
            <strong>'.$_SESSION['alert']['msg'].' '.$_SESSION['alert']['type'].'</strong>
            <button type="button" class="close" data-dismiss="alert" aria-label="Close">
              <span aria-hidden="true">&times;</span>
            </button>
          </div>';
          unset($_SESSION['alert']);
        }
    }
}