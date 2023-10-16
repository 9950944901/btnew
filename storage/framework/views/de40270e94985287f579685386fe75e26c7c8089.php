<!DOCTYPE html>
<html>
  <title>Login</title>
  <meta charset="utf-8">
  <meta content="width=device-width, initial-scale=1.0" name="viewport">
  <meta content="" name="description">
  <meta content="" name="keywords">
  <link rel="icon" type="image/x-icon" href="<?php echo e(url('public/favicon.png')); ?>">
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
<body>
    <div class="container py-3">
        <div class="row">
            <div class="col-md-12">
                <div class="text-center">
                    <h2><img src="<?php echo e(url('public/school-logo.png')); ?>" alt=""></h2>
                </div>
                <div class="container">
                    <div class="row justify-content-center">
                        <div class="col-md-5">
                            <div>
                                <div class="shadow-sm bg-light p-5 gggg" style="border:1px solid rgb(59, 58, 58);border-radius:10px">
                                 
                                  <h2 class="text-center text-effect">Super Admin Sign In</h2>

                                    <form action="<?php echo e(route('SuperADMIN.Check.Data')); ?>" method="post">
                                        <?php echo csrf_field(); ?>
                                        <div class="mb-3 mt-3">
                                            <label for="email">Email</label>
                                            <input type="email" class="form-control" placeholder="Enter email" name="email" value="<?php echo e(old('email')); ?>">
                                            <?php $__errorArgs = ['email'];
$__bag = $errors->getBag($__errorArgs[1] ?? 'default');
if ($__bag->has($__errorArgs[0])) :
if (isset($message)) { $__messageOriginal = $message; }
$message = $__bag->first($__errorArgs[0]); ?>
                                             <span style="color: red"><?php echo e($message); ?></span>  
                                            <?php unset($message);
if (isset($__messageOriginal)) { $message = $__messageOriginal; }
endif;
unset($__errorArgs, $__bag); ?>
                                        </div>
                                        <div class="mb-3">
                                            <label for="pwd">Password</label>
                                            <input type="password" class="form-control" placeholder="Enter password" name="password">
                                            <?php $__errorArgs = ['password'];
$__bag = $errors->getBag($__errorArgs[1] ?? 'default');
if ($__bag->has($__errorArgs[0])) :
if (isset($message)) { $__messageOriginal = $message; }
$message = $__bag->first($__errorArgs[0]); ?>
                                            <span style="color: red"><?php echo e($message); ?></span>  
                                           <?php unset($message);
if (isset($__messageOriginal)) { $message = $__messageOriginal; }
endif;
unset($__errorArgs, $__bag); ?>
                                        </div>
                                        <?php if($message = Session::get('error')): ?>
                                        <div class="alert alert-danger alert-block text-center p-0">  
                                          <strong><?php echo e($message); ?></strong>
                                        </div>
                                        <?php endif; ?>
                                        <div class="text-center">
                                        <button type="submit" class="btn btn-primary">Sign In</button>
                                      </div>
                                    </form>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
<style>
    .text-effect{
    display: block;
    /* font-size: 130px; */
    color: #3871c1;
    text-align: center;
    text-shadow: 3px 3px 0 #fff, 4px 4px 0 rgba(0, 0, 0, 0.2);
    position: relative;
}
.gggg{
    color: #444;
    background: transparent;
    font-family: 'Archivo', sans-serif;
    border: 2px solid #ccc;
    border-radius: 0;
    position: relative;
    z-index: 1;
    transition: all 0.3s ease 0s;
}
.gggg:hover{
    color: #21cf02;
    background: transparent;
    border-color: #21cf02;
    animation: box 3s infinite;
}
.gggg:before,
.gggg:after{
    content: '';
    background-color: #21cf02;
    height: 4px;
    width: 10px;
    position: absolute;
    top: -3px;
    right: 10px;
    transition: all 0.5s ease 0s;
}
.gggg:after{
    top: auto;
    bottom: -3px;
    right: auto;
    left: 10px;
}
.gggg:hover:before{
    right: 85%;
    animation: move 1s infinite;
}
.gggg:hover:after{
    left: 80%;
    animation: move 1s infinite;
}
@keyframes move{
    0%{ transform: translateX(0); }
    50%{ transform: translateX(5px); }
    100%{ transform: translateX(0); }
}
@keyframes box{
    0%{ box-shadow: none; }
    50%{ box-shadow: 0 0 20px #21cf02; }
    100%{ box-shadow: none; }
}


</style>
</body>
</html>
<?php /**PATH C:\xampp\htdocs\SCH\school2\resources\views/login.blade.php ENDPATH**/ ?>