<!DOCTYPE html>
<html>
<title>Login</title>
<meta charset="utf-8">
<meta content="width=device-width, initial-scale=1.0" name="viewport">
<meta content="" name="description">
<meta content="" name="keywords">
<link rel="icon" type="image/x-icon" href="<?php echo e(url('public/favicon.png')); ?>">
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet"
    integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">

<body>
    <div class="container pb-5">
        <div class="row">
            <div class="col-md-12">
               
                <div class="container">
                    <div class="row justify-content-center">
                        <div class="col-md-5">
                            <div class="text-center">
                                 <a href="<?php echo e(url('/')); ?>" >
                                <h2><img src="<?php echo e(url('public/school-logo.png')); ?>" style="width: 100%" alt=""></h2>
                                </a>
                            </div>
                            <div>
                                <form action="<?php echo e(route('ADMIN.Forget')); ?>" method="post">
                                    <?php echo csrf_field(); ?>
                                    <?php if($message = Session::get('success')): ?>
                                    <div class="alert alert-success alert-block text-center p-0">
                                        <strong><?php echo e($message); ?></strong><br>
                                        <small>Page auto redirect after 10 seconds</small>
                                    </div>
                                    <script>
                                        setTimeout(function () {
                                            window.location.replace('<?php echo e(url('/')); ?>');
                                        }, 10000);
                                    </script>
                                    <?php endif; ?>
                                    <?php if($message = Session::get('error')): ?>
                                    <div class="alert alert-danger alert-block text-center p-0">
                                        <strong><?php echo e($message); ?></strong>
                                    </div>
                                    <?php endif; ?>
                                    <div class="mb-3 mt-3">
                                        <label for="email">Enter your registered email</label>
                                        <input type="email" class="form-control" placeholder="Enter your register email" name="email"
                                            value="<?php echo e(old('email')); ?>">
                                        <a href="<?php echo e(route('Site.Login')); ?>" style="float: right;">Back</a>
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
                                    <div class="text-center">
                                        <button type="submit" class="btn btn-primary">Next</button>
                                    </div>
                                </form>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>

</body>

</html><?php /**PATH /home/u640337273/domains/btschool.in/public_html/resources/views/site/login/forget.blade.php ENDPATH**/ ?>