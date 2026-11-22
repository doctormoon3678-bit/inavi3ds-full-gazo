.class Lcom/railty/cerfandroid/MainActivity$13;
.super Ljava/lang/Object;
.source "MainActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/railty/cerfandroid/MainActivity;->SaveStateAndExit()V
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

    .line 657
    iput-object p1, p0, Lcom/railty/cerfandroid/MainActivity$13;->this$0:Lcom/railty/cerfandroid/MainActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .line 659
    nop

    .line 660
    nop

    .line 662
    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Lcom/railty/cerfandroid/MainActivity$13;->this$0:Lcom/railty/cerfandroid/MainActivity;

    iget-object v2, p0, Lcom/railty/cerfandroid/MainActivity$13;->this$0:Lcom/railty/cerfandroid/MainActivity;

    invoke-static {v2}, Lcom/railty/cerfandroid/MainActivity;->access$4000(Lcom/railty/cerfandroid/MainActivity;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/railty/cerfandroid/DeviceStateStore;->RomKey(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 663
    iget-object v2, p0, Lcom/railty/cerfandroid/MainActivity$13;->this$0:Lcom/railty/cerfandroid/MainActivity;

    invoke-static {v2}, Lcom/railty/cerfandroid/MainActivity;->access$4000(Lcom/railty/cerfandroid/MainActivity;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/railty/cerfandroid/DeviceStateStore;->RomLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 664
    const-string v3, "state-"

    const-string v4, ".tmp"

    iget-object v5, p0, Lcom/railty/cerfandroid/MainActivity$13;->this$0:Lcom/railty/cerfandroid/MainActivity;

    .line 665
    invoke-static {v5}, Lcom/railty/cerfandroid/DeviceStateStore;->Directory(Landroid/content/Context;)Ljava/io/File;

    move-result-object v5

    .line 664
    invoke-static {v3, v4, v5}, Ljava/io/File;->createTempFile(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;)Ljava/io/File;

    move-result-object v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 666
    :try_start_1
    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/railty/cerfandroid/MainActivity;->access$4100(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 667
    if-eqz v4, :cond_1

    invoke-virtual {v4}, Ljava/lang/String;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/io/IOException;

    invoke-direct {v0, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 668
    :cond_1
    :goto_0
    iget-object v4, p0, Lcom/railty/cerfandroid/MainActivity$13;->this$0:Lcom/railty/cerfandroid/MainActivity;

    invoke-static {v4, v3, v1, v2}, Lcom/railty/cerfandroid/DeviceStateStore;->Commit(Landroid/content/Context;Ljava/io/File;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 669
    nop

    .line 673
    goto :goto_3

    .line 670
    :catch_0
    move-exception v0

    goto :goto_1

    .line 673
    :catchall_0
    move-exception v1

    move-object v3, v0

    move-object v0, v1

    goto :goto_4

    .line 670
    :catch_1
    move-exception v1

    move-object v3, v0

    move-object v0, v1

    .line 671
    :goto_1
    :try_start_2
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_2

    const-string v0, "\uc0c1\ud0dc \uc800\uc7a5\uc5d0 \uc2e4\ud328\ud588\uc2b5\ub2c8\ub2e4"

    goto :goto_2

    :cond_2
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 673
    :goto_2
    if-eqz v3, :cond_3

    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    .line 675
    :cond_3
    :goto_3
    nop

    .line 676
    iget-object v1, p0, Lcom/railty/cerfandroid/MainActivity$13;->this$0:Lcom/railty/cerfandroid/MainActivity;

    invoke-static {v1}, Lcom/railty/cerfandroid/MainActivity;->access$1900(Lcom/railty/cerfandroid/MainActivity;)Landroid/os/Handler;

    move-result-object v1

    new-instance v2, Lcom/railty/cerfandroid/MainActivity$13$1;

    invoke-direct {v2, p0, v0}, Lcom/railty/cerfandroid/MainActivity$13$1;-><init>(Lcom/railty/cerfandroid/MainActivity$13;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 698
    return-void

    .line 673
    :catchall_1
    move-exception v0

    :goto_4
    if-eqz v3, :cond_4

    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    .line 674
    :cond_4
    throw v0
.end method
