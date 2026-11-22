.class Lcom/railty/cerfandroid/LauncherActivity$5;
.super Ljava/lang/Object;
.source "LauncherActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/railty/cerfandroid/LauncherActivity;->onCreate(Landroid/os/Bundle;)V
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

    .line 256
    iput-object p1, p0, Lcom/railty/cerfandroid/LauncherActivity$5;->this$0:Lcom/railty/cerfandroid/LauncherActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 259
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x1d

    if-ge p1, v0, :cond_0

    return-void

    .line 260
    :cond_0
    iget-object p1, p0, Lcom/railty/cerfandroid/LauncherActivity$5;->this$0:Lcom/railty/cerfandroid/LauncherActivity;

    .line 261
    const-string v0, "role"

    invoke-virtual {p1, v0}, Lcom/railty/cerfandroid/LauncherActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/role/RoleManager;

    .line 262
    if-eqz p1, :cond_2

    const-string v0, "android.app.role.DIALER"

    invoke-virtual {p1, v0}, Landroid/app/role/RoleManager;->isRoleAvailable(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    goto :goto_0

    .line 263
    :cond_1
    iget-object v1, p0, Lcom/railty/cerfandroid/LauncherActivity$5;->this$0:Lcom/railty/cerfandroid/LauncherActivity;

    invoke-virtual {p1, v0}, Landroid/app/role/RoleManager;->createRequestRoleIntent(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p1

    const/16 v0, 0x1c85

    invoke-virtual {v1, p1, v0}, Lcom/railty/cerfandroid/LauncherActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 265
    return-void

    .line 262
    :cond_2
    :goto_0
    return-void
.end method
