.class Lcom/railty/cerfandroid/LauncherActivity$28$1;
.super Ljava/lang/Object;
.source "LauncherActivity.java"

# interfaces
.implements Lcom/railty/cerfandroid/LauncherActivity$NameCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/railty/cerfandroid/LauncherActivity$28;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/railty/cerfandroid/LauncherActivity$28;


# direct methods
.method constructor <init>(Lcom/railty/cerfandroid/LauncherActivity$28;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 1407
    iput-object p1, p0, Lcom/railty/cerfandroid/LauncherActivity$28$1;->this$1:Lcom/railty/cerfandroid/LauncherActivity$28;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public Done(Ljava/lang/String;)V
    .locals 1

    .line 1410
    iget-object v0, p0, Lcom/railty/cerfandroid/LauncherActivity$28$1;->this$1:Lcom/railty/cerfandroid/LauncherActivity$28;

    iget-object v0, v0, Lcom/railty/cerfandroid/LauncherActivity$28;->val$current:Lcom/railty/cerfandroid/Containers$Info;

    invoke-static {v0, p1}, Lcom/railty/cerfandroid/Containers;->Rename(Lcom/railty/cerfandroid/Containers$Info;Ljava/lang/String;)V

    .line 1411
    iget-object p1, p0, Lcom/railty/cerfandroid/LauncherActivity$28$1;->this$1:Lcom/railty/cerfandroid/LauncherActivity$28;

    iget-object p1, p1, Lcom/railty/cerfandroid/LauncherActivity$28;->this$0:Lcom/railty/cerfandroid/LauncherActivity;

    invoke-virtual {p1}, Lcom/railty/cerfandroid/LauncherActivity;->recreate()V

    .line 1412
    return-void
.end method
