.class Lcom/railty/cerfandroid/CameraBridge$2;
.super Landroid/hardware/camera2/CameraDevice$StateCallback;
.source "CameraBridge.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/railty/cerfandroid/CameraBridge;->Start()V
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

    .line 73
    iput-object p1, p0, Lcom/railty/cerfandroid/CameraBridge$2;->this$0:Lcom/railty/cerfandroid/CameraBridge;

    invoke-direct {p0}, Landroid/hardware/camera2/CameraDevice$StateCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onDisconnected(Landroid/hardware/camera2/CameraDevice;)V
    .locals 0

    .line 75
    invoke-virtual {p1}, Landroid/hardware/camera2/CameraDevice;->close()V

    return-void
.end method

.method public onError(Landroid/hardware/camera2/CameraDevice;I)V
    .locals 2

    .line 77
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "camera error "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v0, "CERF-Camera"

    invoke-static {v0, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 78
    invoke-virtual {p1}, Landroid/hardware/camera2/CameraDevice;->close()V

    .line 79
    return-void
.end method

.method public onOpened(Landroid/hardware/camera2/CameraDevice;)V
    .locals 1

    .line 74
    iget-object v0, p0, Lcom/railty/cerfandroid/CameraBridge$2;->this$0:Lcom/railty/cerfandroid/CameraBridge;

    invoke-static {v0, p1}, Lcom/railty/cerfandroid/CameraBridge;->access$102(Lcom/railty/cerfandroid/CameraBridge;Landroid/hardware/camera2/CameraDevice;)Landroid/hardware/camera2/CameraDevice;

    iget-object p1, p0, Lcom/railty/cerfandroid/CameraBridge$2;->this$0:Lcom/railty/cerfandroid/CameraBridge;

    invoke-static {p1}, Lcom/railty/cerfandroid/CameraBridge;->access$200(Lcom/railty/cerfandroid/CameraBridge;)V

    return-void
.end method
