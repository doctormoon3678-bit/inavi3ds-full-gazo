.class Lcom/railty/cerfandroid/LauncherActivity$29;
.super Ljava/lang/Object;
.source "LauncherActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/railty/cerfandroid/LauncherActivity;->BuildContainerBar(Landroid/widget/LinearLayout;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/railty/cerfandroid/LauncherActivity;

.field final synthetic val$all:Ljava/util/List;

.field final synthetic val$current:Lcom/railty/cerfandroid/Containers$Info;


# direct methods
.method constructor <init>(Lcom/railty/cerfandroid/LauncherActivity;Ljava/util/List;Lcom/railty/cerfandroid/Containers$Info;)V
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

    .line 1416
    iput-object p1, p0, Lcom/railty/cerfandroid/LauncherActivity$29;->this$0:Lcom/railty/cerfandroid/LauncherActivity;

    iput-object p2, p0, Lcom/railty/cerfandroid/LauncherActivity$29;->val$all:Ljava/util/List;

    iput-object p3, p0, Lcom/railty/cerfandroid/LauncherActivity$29;->val$current:Lcom/railty/cerfandroid/Containers$Info;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 1419
    iget-object p1, p0, Lcom/railty/cerfandroid/LauncherActivity$29;->val$all:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    const/4 v0, 0x1

    if-gt p1, v0, :cond_0

    .line 1420
    iget-object p1, p0, Lcom/railty/cerfandroid/LauncherActivity$29;->this$0:Lcom/railty/cerfandroid/LauncherActivity;

    const-string v0, "\ub9c8\uc9c0\ub9c9 \ucee8\ud14c\uc774\ub108\ub294 \uc0ad\uc81c\ud560 \uc218 \uc5c6\uc2b5\ub2c8\ub2e4"

    const/4 v1, 0x0

    invoke-static {p1, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    .line 1421
    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    .line 1422
    return-void

    .line 1424
    :cond_0
    new-instance p1, Landroid/app/AlertDialog$Builder;

    iget-object v0, p0, Lcom/railty/cerfandroid/LauncherActivity$29;->this$0:Lcom/railty/cerfandroid/LauncherActivity;

    invoke-direct {p1, v0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 1425
    const-string v0, "\ucee8\ud14c\uc774\ub108 \uc0ad\uc81c"

    invoke-virtual {p1, v0}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/railty/cerfandroid/LauncherActivity$29;->val$current:Lcom/railty/cerfandroid/Containers$Info;

    iget-object v1, v1, Lcom/railty/cerfandroid/Containers$Info;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\uc758 ROM \uc0ac\ubcf8, \uc124\uc815, \uc800\uc7a5 \uc0c1\ud0dc, CF \uc774\ubbf8\uc9c0\ub97c \ubaa8\ub450 \uc0ad\uc81c\ud569\ub2c8\ub2e4."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1426
    invoke-virtual {p1, v0}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    .line 1427
    const-string v0, "\ucde8\uc18c"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    new-instance v0, Lcom/railty/cerfandroid/LauncherActivity$29$1;

    invoke-direct {v0, p0}, Lcom/railty/cerfandroid/LauncherActivity$29$1;-><init>(Lcom/railty/cerfandroid/LauncherActivity$29;)V

    .line 1428
    const-string v1, "\uc0ad\uc81c"

    invoke-virtual {p1, v1, v0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    .line 1435
    invoke-virtual {p1}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 1436
    return-void
.end method
