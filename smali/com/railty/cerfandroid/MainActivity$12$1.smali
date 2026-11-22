.class Lcom/railty/cerfandroid/MainActivity$12$1;
.super Ljava/lang/Object;
.source "MainActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/railty/cerfandroid/MainActivity$12;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/railty/cerfandroid/MainActivity$12;

.field final synthetic val$result:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/railty/cerfandroid/MainActivity$12;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010
        }
        names = {
            null,
            null
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 635
    iput-object p1, p0, Lcom/railty/cerfandroid/MainActivity$12$1;->this$1:Lcom/railty/cerfandroid/MainActivity$12;

    iput-object p2, p0, Lcom/railty/cerfandroid/MainActivity$12$1;->val$result:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 637
    iget-object v0, p0, Lcom/railty/cerfandroid/MainActivity$12$1;->this$1:Lcom/railty/cerfandroid/MainActivity$12;

    iget-object v0, v0, Lcom/railty/cerfandroid/MainActivity$12;->this$0:Lcom/railty/cerfandroid/MainActivity;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/railty/cerfandroid/MainActivity;->access$3902(Lcom/railty/cerfandroid/MainActivity;Z)Z

    .line 638
    iget-object v0, p0, Lcom/railty/cerfandroid/MainActivity$12$1;->val$result:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 639
    iget-object v0, p0, Lcom/railty/cerfandroid/MainActivity$12$1;->this$1:Lcom/railty/cerfandroid/MainActivity$12;

    iget-object v0, v0, Lcom/railty/cerfandroid/MainActivity$12;->this$0:Lcom/railty/cerfandroid/MainActivity;

    const-string v2, "\uc0c1\ud0dc\ub97c \uc800\uc7a5\ud588\uc2b5\ub2c8\ub2e4. \uc885\ub8cc\ud569\ub2c8\ub2e4."

    invoke-static {v0, v2, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    .line 640
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 641
    iget-object v0, p0, Lcom/railty/cerfandroid/MainActivity$12$1;->this$1:Lcom/railty/cerfandroid/MainActivity$12;

    iget-object v0, v0, Lcom/railty/cerfandroid/MainActivity$12;->this$0:Lcom/railty/cerfandroid/MainActivity;

    invoke-static {v0}, Lcom/railty/cerfandroid/MainActivity;->access$3600(Lcom/railty/cerfandroid/MainActivity;)V

    goto :goto_0

    .line 643
    :cond_0
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/railty/cerfandroid/MainActivity$12$1;->this$1:Lcom/railty/cerfandroid/MainActivity$12;

    iget-object v1, v1, Lcom/railty/cerfandroid/MainActivity$12;->this$0:Lcom/railty/cerfandroid/MainActivity;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 644
    const-string v1, "\uc0c1\ud0dc \uc800\uc7a5 \uc2e4\ud328"

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/railty/cerfandroid/MainActivity$12$1;->val$result:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n\n\uc5d0\ubbac\ub808\uc774\ud130\ub97c \uc800\uc7a5 \uc5c6\uc774 \uc885\ub8cc\ud560\uae4c\uc694?"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 645
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lcom/railty/cerfandroid/MainActivity$12$1$1;

    invoke-direct {v1, p0}, Lcom/railty/cerfandroid/MainActivity$12$1$1;-><init>(Lcom/railty/cerfandroid/MainActivity$12$1;)V

    .line 646
    const-string v2, "\uc800\uc7a5 \uc5c6\uc774 \uc885\ub8cc"

    invoke-virtual {v0, v2, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 652
    const-string v1, "\uacc4\uc18d \uc0ac\uc6a9"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 653
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 655
    :goto_0
    return-void
.end method
