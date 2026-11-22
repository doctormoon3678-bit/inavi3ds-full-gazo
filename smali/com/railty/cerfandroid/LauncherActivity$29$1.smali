.class Lcom/railty/cerfandroid/LauncherActivity$29$1;
.super Ljava/lang/Object;
.source "LauncherActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/railty/cerfandroid/LauncherActivity$29;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/railty/cerfandroid/LauncherActivity$29;


# direct methods
.method constructor <init>(Lcom/railty/cerfandroid/LauncherActivity$29;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 1428
    iput-object p1, p0, Lcom/railty/cerfandroid/LauncherActivity$29$1;->this$1:Lcom/railty/cerfandroid/LauncherActivity$29;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 1431
    iget-object p1, p0, Lcom/railty/cerfandroid/LauncherActivity$29$1;->this$1:Lcom/railty/cerfandroid/LauncherActivity$29;

    iget-object p1, p1, Lcom/railty/cerfandroid/LauncherActivity$29;->this$0:Lcom/railty/cerfandroid/LauncherActivity;

    iget-object p2, p0, Lcom/railty/cerfandroid/LauncherActivity$29$1;->this$1:Lcom/railty/cerfandroid/LauncherActivity$29;

    iget-object p2, p2, Lcom/railty/cerfandroid/LauncherActivity$29;->val$current:Lcom/railty/cerfandroid/Containers$Info;

    invoke-static {p1, p2}, Lcom/railty/cerfandroid/Containers;->Delete(Landroid/content/Context;Lcom/railty/cerfandroid/Containers$Info;)V

    .line 1432
    iget-object p1, p0, Lcom/railty/cerfandroid/LauncherActivity$29$1;->this$1:Lcom/railty/cerfandroid/LauncherActivity$29;

    iget-object p1, p1, Lcom/railty/cerfandroid/LauncherActivity$29;->this$0:Lcom/railty/cerfandroid/LauncherActivity;

    invoke-virtual {p1}, Lcom/railty/cerfandroid/LauncherActivity;->recreate()V

    .line 1433
    return-void
.end method
