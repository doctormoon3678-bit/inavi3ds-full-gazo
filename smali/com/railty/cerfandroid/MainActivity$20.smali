.class Lcom/railty/cerfandroid/MainActivity$20;
.super Ljava/lang/Object;
.source "MainActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/railty/cerfandroid/MainActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/railty/cerfandroid/MainActivity;


# direct methods
.method constructor <init>(Lcom/railty/cerfandroid/MainActivity;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 1008
    iput-object p1, p0, Lcom/railty/cerfandroid/MainActivity$20;->this$0:Lcom/railty/cerfandroid/MainActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 1011
    iget-object v0, p0, Lcom/railty/cerfandroid/MainActivity$20;->this$0:Lcom/railty/cerfandroid/MainActivity;

    invoke-static {v0}, Lcom/railty/cerfandroid/MainActivity;->access$5400(Lcom/railty/cerfandroid/MainActivity;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/railty/cerfandroid/MainActivity;->access$6400()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 1012
    :goto_0
    iget-object v1, p0, Lcom/railty/cerfandroid/MainActivity$20;->this$0:Lcom/railty/cerfandroid/MainActivity;

    invoke-static {v1}, Lcom/railty/cerfandroid/MainActivity;->access$6500(Lcom/railty/cerfandroid/MainActivity;)Lcom/railty/cerfandroid/CameraBridge;

    move-result-object v1

    if-nez v1, :cond_1

    .line 1013
    iget-object v1, p0, Lcom/railty/cerfandroid/MainActivity$20;->this$0:Lcom/railty/cerfandroid/MainActivity;

    new-instance v2, Lcom/railty/cerfandroid/CameraBridge;

    iget-object v3, p0, Lcom/railty/cerfandroid/MainActivity$20;->this$0:Lcom/railty/cerfandroid/MainActivity;

    new-instance v4, Lcom/railty/cerfandroid/MainActivity$20$1;

    invoke-direct {v4, p0}, Lcom/railty/cerfandroid/MainActivity$20$1;-><init>(Lcom/railty/cerfandroid/MainActivity$20;)V

    invoke-direct {v2, v3, v4}, Lcom/railty/cerfandroid/CameraBridge;-><init>(Landroid/content/Context;Lcom/railty/cerfandroid/CameraBridge$Sink;)V

    invoke-static {v1, v2}, Lcom/railty/cerfandroid/MainActivity;->access$6502(Lcom/railty/cerfandroid/MainActivity;Lcom/railty/cerfandroid/CameraBridge;)Lcom/railty/cerfandroid/CameraBridge;

    .line 1019
    :cond_1
    if-eqz v0, :cond_2

    iget-object v1, p0, Lcom/railty/cerfandroid/MainActivity$20;->this$0:Lcom/railty/cerfandroid/MainActivity;

    invoke-static {v1}, Lcom/railty/cerfandroid/MainActivity;->access$6500(Lcom/railty/cerfandroid/MainActivity;)Lcom/railty/cerfandroid/CameraBridge;

    move-result-object v1

    invoke-virtual {v1}, Lcom/railty/cerfandroid/CameraBridge;->Running()Z

    move-result v1

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/railty/cerfandroid/MainActivity$20;->this$0:Lcom/railty/cerfandroid/MainActivity;

    .line 1020
    const-string v2, "android.permission.CAMERA"

    invoke-virtual {v1, v2}, Lcom/railty/cerfandroid/MainActivity;->checkSelfPermission(Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_2

    .line 1022
    iget-object v0, p0, Lcom/railty/cerfandroid/MainActivity$20;->this$0:Lcom/railty/cerfandroid/MainActivity;

    invoke-static {v0}, Lcom/railty/cerfandroid/MainActivity;->access$6500(Lcom/railty/cerfandroid/MainActivity;)Lcom/railty/cerfandroid/CameraBridge;

    move-result-object v0

    invoke-virtual {v0}, Lcom/railty/cerfandroid/CameraBridge;->Start()V

    goto :goto_1

    .line 1023
    :cond_2
    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/railty/cerfandroid/MainActivity$20;->this$0:Lcom/railty/cerfandroid/MainActivity;

    invoke-static {v0}, Lcom/railty/cerfandroid/MainActivity;->access$6500(Lcom/railty/cerfandroid/MainActivity;)Lcom/railty/cerfandroid/CameraBridge;

    move-result-object v0

    invoke-virtual {v0}, Lcom/railty/cerfandroid/CameraBridge;->Running()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1024
    iget-object v0, p0, Lcom/railty/cerfandroid/MainActivity$20;->this$0:Lcom/railty/cerfandroid/MainActivity;

    invoke-static {v0}, Lcom/railty/cerfandroid/MainActivity;->access$6500(Lcom/railty/cerfandroid/MainActivity;)Lcom/railty/cerfandroid/CameraBridge;

    move-result-object v0

    invoke-virtual {v0}, Lcom/railty/cerfandroid/CameraBridge;->Stop()V

    .line 1026
    :cond_3
    :goto_1
    iget-object v0, p0, Lcom/railty/cerfandroid/MainActivity$20;->this$0:Lcom/railty/cerfandroid/MainActivity;

    invoke-static {v0}, Lcom/railty/cerfandroid/MainActivity;->access$1900(Lcom/railty/cerfandroid/MainActivity;)Landroid/os/Handler;

    move-result-object v0

    const-wide/16 v1, 0x1f4

    invoke-virtual {v0, p0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1027
    return-void
.end method
