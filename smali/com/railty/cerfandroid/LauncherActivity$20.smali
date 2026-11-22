.class Lcom/railty/cerfandroid/LauncherActivity$20;
.super Ljava/lang/Object;
.source "LauncherActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/railty/cerfandroid/LauncherActivity;->ConfirmDeleteState()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/railty/cerfandroid/LauncherActivity;


# direct methods
.method constructor <init>(Lcom/railty/cerfandroid/LauncherActivity;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 597
    iput-object p1, p0, Lcom/railty/cerfandroid/LauncherActivity$20;->this$0:Lcom/railty/cerfandroid/LauncherActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    .line 600
    :try_start_0
    iget-object p1, p0, Lcom/railty/cerfandroid/LauncherActivity$20;->this$0:Lcom/railty/cerfandroid/LauncherActivity;

    iget-object p2, p0, Lcom/railty/cerfandroid/LauncherActivity$20;->this$0:Lcom/railty/cerfandroid/LauncherActivity;

    invoke-static {p2}, Lcom/railty/cerfandroid/LauncherActivity;->access$1900(Lcom/railty/cerfandroid/LauncherActivity;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/railty/cerfandroid/DeviceStateStore;->Delete(Landroid/content/Context;Ljava/lang/String;)V

    .line 601
    iget-object p1, p0, Lcom/railty/cerfandroid/LauncherActivity$20;->this$0:Lcom/railty/cerfandroid/LauncherActivity;

    invoke-static {p1}, Lcom/railty/cerfandroid/LauncherActivity;->access$2000(Lcom/railty/cerfandroid/LauncherActivity;)V

    .line 602
    iget-object p1, p0, Lcom/railty/cerfandroid/LauncherActivity$20;->this$0:Lcom/railty/cerfandroid/LauncherActivity;

    const-string p2, "\uc800\uc7a5 \uc0c1\ud0dc\ub97c \uc0ad\uc81c\ud588\uc2b5\ub2c8\ub2e4"

    const/4 v0, 0x0

    invoke-static {p1, p2, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    .line 603
    invoke-virtual {p1}, Landroid/widget/Toast;->show()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 607
    goto :goto_0

    .line 604
    :catch_0
    move-exception p1

    .line 605
    iget-object p2, p0, Lcom/railty/cerfandroid/LauncherActivity$20;->this$0:Lcom/railty/cerfandroid/LauncherActivity;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\uc0ad\uc81c \uc2e4\ud328: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x1

    invoke-static {p2, p1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    .line 606
    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    .line 608
    :goto_0
    return-void
.end method
