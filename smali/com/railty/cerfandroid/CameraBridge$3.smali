.class Lcom/railty/cerfandroid/CameraBridge$3;
.super Landroid/hardware/camera2/CameraCaptureSession$StateCallback;
.source "CameraBridge.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/railty/cerfandroid/CameraBridge;->StartSession()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/railty/cerfandroid/CameraBridge;


# direct methods
.method constructor <init>(Lcom/railty/cerfandroid/CameraBridge;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 92
    iput-object p1, p0, Lcom/railty/cerfandroid/CameraBridge$3;->this$0:Lcom/railty/cerfandroid/CameraBridge;

    invoke-direct {p0}, Landroid/hardware/camera2/CameraCaptureSession$StateCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onConfigureFailed(Landroid/hardware/camera2/CameraCaptureSession;)V
    .locals 1

    .line 104
    const-string p1, "CERF-Camera"

    const-string v0, "camera session failed"

    invoke-static {p1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 105
    return-void
.end method

.method public onConfigured(Landroid/hardware/camera2/CameraCaptureSession;)V
    .locals 3

    .line 94
    iget-object v0, p0, Lcom/railty/cerfandroid/CameraBridge$3;->this$0:Lcom/railty/cerfandroid/CameraBridge;

    invoke-static {v0, p1}, Lcom/railty/cerfandroid/CameraBridge;->access$302(Lcom/railty/cerfandroid/CameraBridge;Landroid/hardware/camera2/CameraCaptureSession;)Landroid/hardware/camera2/CameraCaptureSession;

    .line 96
    :try_start_0
    iget-object v0, p0, Lcom/railty/cerfandroid/CameraBridge$3;->this$0:Lcom/railty/cerfandroid/CameraBridge;

    invoke-static {v0}, Lcom/railty/cerfandroid/CameraBridge;->access$100(Lcom/railty/cerfandroid/CameraBridge;)Landroid/hardware/camera2/CameraDevice;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/hardware/camera2/CameraDevice;->createCaptureRequest(I)Landroid/hardware/camera2/CaptureRequest$Builder;

    move-result-object v0

    .line 97
    iget-object v1, p0, Lcom/railty/cerfandroid/CameraBridge$3;->this$0:Lcom/railty/cerfandroid/CameraBridge;

    invoke-static {v1}, Lcom/railty/cerfandroid/CameraBridge;->access$400(Lcom/railty/cerfandroid/CameraBridge;)Landroid/media/ImageReader;

    move-result-object v1

    invoke-virtual {v1}, Landroid/media/ImageReader;->getSurface()Landroid/view/Surface;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/hardware/camera2/CaptureRequest$Builder;->addTarget(Landroid/view/Surface;)V

    .line 98
    invoke-virtual {v0}, Landroid/hardware/camera2/CaptureRequest$Builder;->build()Landroid/hardware/camera2/CaptureRequest;

    move-result-object v0

    iget-object v1, p0, Lcom/railty/cerfandroid/CameraBridge$3;->this$0:Lcom/railty/cerfandroid/CameraBridge;

    invoke-static {v1}, Lcom/railty/cerfandroid/CameraBridge;->access$500(Lcom/railty/cerfandroid/CameraBridge;)Landroid/os/Handler;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {p1, v0, v2, v1}, Landroid/hardware/camera2/CameraCaptureSession;->setRepeatingRequest(Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;Landroid/os/Handler;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 101
    goto :goto_0

    .line 99
    :catch_0
    move-exception p1

    .line 100
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "camera request failed: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "CERF-Camera"

    invoke-static {v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 102
    :goto_0
    return-void
.end method
