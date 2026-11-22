.class Lcom/railty/cerfandroid/LauncherActivity$31;
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

    .line 1451
    iput-object p1, p0, Lcom/railty/cerfandroid/LauncherActivity$31;->this$0:Lcom/railty/cerfandroid/LauncherActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 1454
    new-instance p1, Landroid/content/Intent;

    const-string v0, "android.intent.action.OPEN_DOCUMENT"

    invoke-direct {p1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1455
    const-string v0, "android.intent.category.OPENABLE"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 1456
    const-string v0, "*/*"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 1457
    iget-object v0, p0, Lcom/railty/cerfandroid/LauncherActivity$31;->this$0:Lcom/railty/cerfandroid/LauncherActivity;

    const/4 v1, 0x5

    invoke-virtual {v0, p1, v1}, Lcom/railty/cerfandroid/LauncherActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 1458
    return-void
.end method
