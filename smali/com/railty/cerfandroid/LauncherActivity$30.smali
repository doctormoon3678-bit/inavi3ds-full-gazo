.class Lcom/railty/cerfandroid/LauncherActivity$30;
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

.field final synthetic val$current:Lcom/railty/cerfandroid/Containers$Info;


# direct methods
.method constructor <init>(Lcom/railty/cerfandroid/LauncherActivity;Lcom/railty/cerfandroid/Containers$Info;)V
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

    .line 1440
    iput-object p1, p0, Lcom/railty/cerfandroid/LauncherActivity$30;->this$0:Lcom/railty/cerfandroid/LauncherActivity;

    iput-object p2, p0, Lcom/railty/cerfandroid/LauncherActivity$30;->val$current:Lcom/railty/cerfandroid/Containers$Info;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4

    .line 1443
    new-instance p1, Landroid/content/Intent;

    const-string v0, "android.intent.action.CREATE_DOCUMENT"

    invoke-direct {p1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1444
    const-string v0, "android.intent.category.OPENABLE"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 1445
    const-string v0, "application/zip"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 1446
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/railty/cerfandroid/LauncherActivity$30;->val$current:Lcom/railty/cerfandroid/Containers$Info;

    iget-object v1, v1, Lcom/railty/cerfandroid/Containers$Info;->name:Ljava/lang/String;

    .line 1447
    const-string v2, "[\\\\/:*?\"<>|]"

    const-string v3, "_"

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ".cerf.zip"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1446
    const-string v1, "android.intent.extra.TITLE"

    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1448
    iget-object v0, p0, Lcom/railty/cerfandroid/LauncherActivity$30;->this$0:Lcom/railty/cerfandroid/LauncherActivity;

    const/4 v1, 0x4

    invoke-virtual {v0, p1, v1}, Lcom/railty/cerfandroid/LauncherActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 1449
    return-void
.end method
