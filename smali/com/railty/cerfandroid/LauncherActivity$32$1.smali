.class Lcom/railty/cerfandroid/LauncherActivity$32$1;
.super Ljava/lang/Object;
.source "LauncherActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/railty/cerfandroid/LauncherActivity$32;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/railty/cerfandroid/LauncherActivity$32;

.field final synthetic val$err:Ljava/lang/String;

.field final synthetic val$newId:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/railty/cerfandroid/LauncherActivity$32;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010,
            0x1010
        }
        names = {
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

    .line 1495
    iput-object p1, p0, Lcom/railty/cerfandroid/LauncherActivity$32$1;->this$1:Lcom/railty/cerfandroid/LauncherActivity$32;

    iput-object p2, p0, Lcom/railty/cerfandroid/LauncherActivity$32$1;->val$err:Ljava/lang/String;

    iput-object p3, p0, Lcom/railty/cerfandroid/LauncherActivity$32$1;->val$newId:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 1498
    iget-object v0, p0, Lcom/railty/cerfandroid/LauncherActivity$32$1;->this$1:Lcom/railty/cerfandroid/LauncherActivity$32;

    iget-object v0, v0, Lcom/railty/cerfandroid/LauncherActivity$32;->val$progress:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 1499
    iget-object v0, p0, Lcom/railty/cerfandroid/LauncherActivity$32$1;->val$err:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 1500
    iget-object v0, p0, Lcom/railty/cerfandroid/LauncherActivity$32$1;->this$1:Lcom/railty/cerfandroid/LauncherActivity$32;

    iget-object v0, v0, Lcom/railty/cerfandroid/LauncherActivity$32;->this$0:Lcom/railty/cerfandroid/LauncherActivity;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 1501
    iget-object v2, p0, Lcom/railty/cerfandroid/LauncherActivity$32$1;->this$1:Lcom/railty/cerfandroid/LauncherActivity$32;

    iget-boolean v2, v2, Lcom/railty/cerfandroid/LauncherActivity$32;->val$export:Z

    if-eqz v2, :cond_0

    const-string v2, "\ub0b4\ubcf4\ub0b4\uae30 \uc2e4\ud328: "

    goto :goto_0

    :cond_0
    const-string v2, "\uac00\uc838\uc624\uae30 \uc2e4\ud328: "

    :goto_0
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/railty/cerfandroid/LauncherActivity$32$1;->val$err:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1500
    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    .line 1502
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 1503
    return-void

    .line 1505
    :cond_1
    iget-object v0, p0, Lcom/railty/cerfandroid/LauncherActivity$32$1;->this$1:Lcom/railty/cerfandroid/LauncherActivity$32;

    iget-object v0, v0, Lcom/railty/cerfandroid/LauncherActivity$32;->this$0:Lcom/railty/cerfandroid/LauncherActivity;

    .line 1506
    iget-object v1, p0, Lcom/railty/cerfandroid/LauncherActivity$32$1;->this$1:Lcom/railty/cerfandroid/LauncherActivity$32;

    iget-boolean v1, v1, Lcom/railty/cerfandroid/LauncherActivity$32;->val$export:Z

    if-eqz v1, :cond_2

    const-string v1, "\ub0b4\ubcf4\ub0b4\uae30 \uc644\ub8cc"

    goto :goto_1

    :cond_2
    const-string v1, "\uac00\uc838\uc624\uae30 \uc644\ub8cc"

    .line 1505
    :goto_1
    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    .line 1506
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 1507
    iget-object v0, p0, Lcom/railty/cerfandroid/LauncherActivity$32$1;->val$newId:Ljava/lang/String;

    if-eqz v0, :cond_3

    .line 1508
    iget-object v0, p0, Lcom/railty/cerfandroid/LauncherActivity$32$1;->this$1:Lcom/railty/cerfandroid/LauncherActivity$32;

    iget-object v0, v0, Lcom/railty/cerfandroid/LauncherActivity$32;->this$0:Lcom/railty/cerfandroid/LauncherActivity;

    iget-object v1, p0, Lcom/railty/cerfandroid/LauncherActivity$32$1;->val$newId:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/railty/cerfandroid/Containers;->SetActive(Landroid/content/Context;Ljava/lang/String;)V

    .line 1509
    iget-object v0, p0, Lcom/railty/cerfandroid/LauncherActivity$32$1;->this$1:Lcom/railty/cerfandroid/LauncherActivity$32;

    iget-object v0, v0, Lcom/railty/cerfandroid/LauncherActivity$32;->this$0:Lcom/railty/cerfandroid/LauncherActivity;

    invoke-virtual {v0}, Lcom/railty/cerfandroid/LauncherActivity;->recreate()V

    .line 1511
    :cond_3
    return-void
.end method
