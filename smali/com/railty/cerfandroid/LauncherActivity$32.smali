.class Lcom/railty/cerfandroid/LauncherActivity$32;
.super Ljava/lang/Object;
.source "LauncherActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/railty/cerfandroid/LauncherActivity;->RunContainerTransfer(Landroid/net/Uri;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/railty/cerfandroid/LauncherActivity;

.field final synthetic val$activeId:Ljava/lang/String;

.field final synthetic val$export:Z

.field final synthetic val$progress:Landroid/app/ProgressDialog;

.field final synthetic val$uri:Landroid/net/Uri;


# direct methods
.method constructor <init>(Lcom/railty/cerfandroid/LauncherActivity;ZLjava/lang/String;Landroid/net/Uri;Landroid/app/ProgressDialog;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010,
            0x1010,
            0x1010,
            0x1010
        }
        names = {
            null,
            null,
            null,
            null,
            null
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1469
    iput-object p1, p0, Lcom/railty/cerfandroid/LauncherActivity$32;->this$0:Lcom/railty/cerfandroid/LauncherActivity;

    iput-boolean p2, p0, Lcom/railty/cerfandroid/LauncherActivity$32;->val$export:Z

    iput-object p3, p0, Lcom/railty/cerfandroid/LauncherActivity$32;->val$activeId:Ljava/lang/String;

    iput-object p4, p0, Lcom/railty/cerfandroid/LauncherActivity$32;->val$uri:Landroid/net/Uri;

    iput-object p5, p0, Lcom/railty/cerfandroid/LauncherActivity$32;->val$progress:Landroid/app/ProgressDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .line 1472
    nop

    .line 1473
    nop

    .line 1475
    const/4 v0, 0x0

    :try_start_0
    iget-boolean v1, p0, Lcom/railty/cerfandroid/LauncherActivity$32;->val$export:Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_2

    const-string v2, "\uc5f4 \uc218 \uc5c6\uc74c"

    if-eqz v1, :cond_6

    .line 1476
    nop

    .line 1477
    :try_start_1
    iget-object v1, p0, Lcom/railty/cerfandroid/LauncherActivity$32;->this$0:Lcom/railty/cerfandroid/LauncherActivity;

    invoke-static {v1}, Lcom/railty/cerfandroid/Containers;->List(Landroid/content/Context;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    move-object v3, v0

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/railty/cerfandroid/Containers$Info;

    .line 1478
    iget-object v5, v4, Lcom/railty/cerfandroid/Containers$Info;->id:Ljava/lang/String;

    iget-object v6, p0, Lcom/railty/cerfandroid/LauncherActivity$32;->val$activeId:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    move-object v3, v4

    goto :goto_0

    .line 1479
    :cond_1
    if-eqz v3, :cond_5

    .line 1480
    iget-object v1, p0, Lcom/railty/cerfandroid/LauncherActivity$32;->this$0:Lcom/railty/cerfandroid/LauncherActivity;

    invoke-virtual {v1}, Lcom/railty/cerfandroid/LauncherActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    iget-object v4, p0, Lcom/railty/cerfandroid/LauncherActivity$32;->val$uri:Landroid/net/Uri;

    invoke-virtual {v1, v4}, Landroid/content/ContentResolver;->openOutputStream(Landroid/net/Uri;)Ljava/io/OutputStream;

    move-result-object v1
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_2

    .line 1481
    if-eqz v1, :cond_3

    .line 1482
    :try_start_2
    invoke-static {v3, v1}, Lcom/railty/cerfandroid/Containers;->Export(Lcom/railty/cerfandroid/Containers$Info;Ljava/io/OutputStream;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1483
    if-eqz v1, :cond_2

    :try_start_3
    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_3
    .catch Ljava/lang/RuntimeException; {:try_start_3 .. :try_end_3} :catch_2

    .line 1484
    :cond_2
    move-object v2, v0

    goto :goto_4

    .line 1480
    :catchall_0
    move-exception v2

    goto :goto_1

    .line 1481
    :cond_3
    :try_start_4
    new-instance v3, Ljava/io/IOException;

    invoke-direct {v3, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v3
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 1480
    :goto_1
    if-eqz v1, :cond_4

    :try_start_5
    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    goto :goto_2

    :catchall_1
    move-exception v1

    :try_start_6
    invoke-virtual {v2, v1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_4
    :goto_2
    throw v2

    .line 1479
    :cond_5
    new-instance v1, Ljava/io/IOException;

    const-string v2, "\ucee8\ud14c\uc774\ub108\ub97c \ucc3e\uc744 \uc218 \uc5c6\uc2b5\ub2c8\ub2e4"

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1485
    :cond_6
    iget-object v1, p0, Lcom/railty/cerfandroid/LauncherActivity$32;->this$0:Lcom/railty/cerfandroid/LauncherActivity;

    invoke-virtual {v1}, Lcom/railty/cerfandroid/LauncherActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    iget-object v3, p0, Lcom/railty/cerfandroid/LauncherActivity$32;->val$uri:Landroid/net/Uri;

    invoke-virtual {v1, v3}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v1
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_3
    .catch Ljava/lang/RuntimeException; {:try_start_6 .. :try_end_6} :catch_2

    .line 1486
    if-eqz v1, :cond_8

    .line 1487
    :try_start_7
    iget-object v2, p0, Lcom/railty/cerfandroid/LauncherActivity$32;->this$0:Lcom/railty/cerfandroid/LauncherActivity;

    invoke-static {v2, v1}, Lcom/railty/cerfandroid/Containers;->Import(Landroid/content/Context;Ljava/io/InputStream;)Lcom/railty/cerfandroid/Containers$Info;

    move-result-object v2

    iget-object v2, v2, Lcom/railty/cerfandroid/Containers$Info;->id:Ljava/lang/String;
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    .line 1488
    if-eqz v1, :cond_7

    :try_start_8
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_8 .. :try_end_8} :catch_0

    goto :goto_4

    .line 1490
    :catch_0
    move-exception v1

    goto :goto_3

    :catch_1
    move-exception v1

    :goto_3
    move-object v0, v2

    goto :goto_7

    .line 1492
    :cond_7
    :goto_4
    goto :goto_8

    .line 1485
    :catchall_2
    move-exception v2

    goto :goto_5

    .line 1486
    :cond_8
    :try_start_9
    new-instance v3, Ljava/io/IOException;

    invoke-direct {v3, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v3
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_2

    .line 1485
    :goto_5
    if-eqz v1, :cond_9

    :try_start_a
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_3

    goto :goto_6

    :catchall_3
    move-exception v1

    :try_start_b
    invoke-virtual {v2, v1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_9
    :goto_6
    throw v2
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_3
    .catch Ljava/lang/RuntimeException; {:try_start_b .. :try_end_b} :catch_2

    .line 1490
    :catch_2
    move-exception v1

    goto :goto_7

    :catch_3
    move-exception v1

    .line 1491
    :goto_7
    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    move-object v2, v0

    move-object v0, v1

    .line 1493
    :goto_8
    nop

    .line 1494
    nop

    .line 1495
    iget-object v1, p0, Lcom/railty/cerfandroid/LauncherActivity$32;->this$0:Lcom/railty/cerfandroid/LauncherActivity;

    new-instance v3, Lcom/railty/cerfandroid/LauncherActivity$32$1;

    invoke-direct {v3, p0, v0, v2}, Lcom/railty/cerfandroid/LauncherActivity$32$1;-><init>(Lcom/railty/cerfandroid/LauncherActivity$32;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v3}, Lcom/railty/cerfandroid/LauncherActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 1513
    return-void
.end method
