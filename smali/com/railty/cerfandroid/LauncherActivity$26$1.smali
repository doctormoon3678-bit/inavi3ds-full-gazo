.class Lcom/railty/cerfandroid/LauncherActivity$26$1;
.super Ljava/lang/Object;
.source "LauncherActivity.java"

# interfaces
.implements Lcom/railty/cerfandroid/LauncherActivity$NameCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/railty/cerfandroid/LauncherActivity$26;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/railty/cerfandroid/LauncherActivity$26;


# direct methods
.method constructor <init>(Lcom/railty/cerfandroid/LauncherActivity$26;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 1376
    iput-object p1, p0, Lcom/railty/cerfandroid/LauncherActivity$26$1;->this$1:Lcom/railty/cerfandroid/LauncherActivity$26;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public Done(Ljava/lang/String;)V
    .locals 2

    .line 1379
    iget-object v0, p0, Lcom/railty/cerfandroid/LauncherActivity$26$1;->this$1:Lcom/railty/cerfandroid/LauncherActivity$26;

    iget-object v0, v0, Lcom/railty/cerfandroid/LauncherActivity$26;->this$0:Lcom/railty/cerfandroid/LauncherActivity;

    iget-object v1, p0, Lcom/railty/cerfandroid/LauncherActivity$26$1;->this$1:Lcom/railty/cerfandroid/LauncherActivity$26;

    iget-object v1, v1, Lcom/railty/cerfandroid/LauncherActivity$26;->this$0:Lcom/railty/cerfandroid/LauncherActivity;

    .line 1380
    invoke-static {v1, p1}, Lcom/railty/cerfandroid/Containers;->Create(Landroid/content/Context;Ljava/lang/String;)Lcom/railty/cerfandroid/Containers$Info;

    move-result-object p1

    iget-object p1, p1, Lcom/railty/cerfandroid/Containers$Info;->id:Ljava/lang/String;

    .line 1379
    invoke-static {v0, p1}, Lcom/railty/cerfandroid/Containers;->SetActive(Landroid/content/Context;Ljava/lang/String;)V

    .line 1381
    iget-object p1, p0, Lcom/railty/cerfandroid/LauncherActivity$26$1;->this$1:Lcom/railty/cerfandroid/LauncherActivity$26;

    iget-object p1, p1, Lcom/railty/cerfandroid/LauncherActivity$26;->this$0:Lcom/railty/cerfandroid/LauncherActivity;

    invoke-virtual {p1}, Lcom/railty/cerfandroid/LauncherActivity;->recreate()V

    .line 1382
    return-void
.end method
