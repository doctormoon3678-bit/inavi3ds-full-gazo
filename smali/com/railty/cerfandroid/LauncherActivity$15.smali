.class Lcom/railty/cerfandroid/LauncherActivity$15;
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

    .line 416
    iput-object p1, p0, Lcom/railty/cerfandroid/LauncherActivity$15;->this$0:Lcom/railty/cerfandroid/LauncherActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 419
    iget-object p1, p0, Lcom/railty/cerfandroid/LauncherActivity$15;->this$0:Lcom/railty/cerfandroid/LauncherActivity;

    invoke-static {p1}, Lcom/railty/cerfandroid/LauncherActivity;->access$100(Lcom/railty/cerfandroid/LauncherActivity;)Lcom/railty/cerfandroid/DeviceSettings;

    move-result-object p1

    iget-object v0, p0, Lcom/railty/cerfandroid/LauncherActivity$15;->this$0:Lcom/railty/cerfandroid/LauncherActivity;

    invoke-static {v0}, Lcom/railty/cerfandroid/DeviceSettings;->DefaultShareFolder(Landroid/content/Context;)Ljava/io/File;

    move-result-object v0

    .line 420
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lcom/railty/cerfandroid/DeviceSettings;->shareFolder:Ljava/lang/String;

    .line 421
    iget-object p1, p0, Lcom/railty/cerfandroid/LauncherActivity$15;->this$0:Lcom/railty/cerfandroid/LauncherActivity;

    invoke-static {p1}, Lcom/railty/cerfandroid/LauncherActivity;->access$1300(Lcom/railty/cerfandroid/LauncherActivity;)Landroid/widget/CheckBox;

    move-result-object p1

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 422
    iget-object p1, p0, Lcom/railty/cerfandroid/LauncherActivity$15;->this$0:Lcom/railty/cerfandroid/LauncherActivity;

    invoke-static {p1}, Lcom/railty/cerfandroid/LauncherActivity;->access$200(Lcom/railty/cerfandroid/LauncherActivity;)V

    .line 423
    return-void
.end method
