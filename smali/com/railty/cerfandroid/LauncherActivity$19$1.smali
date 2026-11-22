.class Lcom/railty/cerfandroid/LauncherActivity$19$1;
.super Ljava/lang/Object;
.source "LauncherActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/railty/cerfandroid/LauncherActivity$19;->onApplyWindowInsets(Landroid/view/View;Landroid/view/WindowInsets;)Landroid/view/WindowInsets;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/railty/cerfandroid/LauncherActivity$19;


# direct methods
.method constructor <init>(Lcom/railty/cerfandroid/LauncherActivity$19;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 477
    iput-object p1, p0, Lcom/railty/cerfandroid/LauncherActivity$19$1;->this$1:Lcom/railty/cerfandroid/LauncherActivity$19;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 480
    iget-object v0, p0, Lcom/railty/cerfandroid/LauncherActivity$19$1;->this$1:Lcom/railty/cerfandroid/LauncherActivity$19;

    iget-object v0, v0, Lcom/railty/cerfandroid/LauncherActivity$19;->this$0:Lcom/railty/cerfandroid/LauncherActivity;

    invoke-virtual {v0}, Lcom/railty/cerfandroid/LauncherActivity;->getCurrentFocus()Landroid/view/View;

    move-result-object v0

    .line 481
    if-nez v0, :cond_0

    return-void

    .line 482
    :cond_0
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    .line 483
    invoke-virtual {v0, v1}, Landroid/view/View;->getDrawingRect(Landroid/graphics/Rect;)V

    .line 484
    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/View;->requestRectangleOnScreen(Landroid/graphics/Rect;Z)Z

    .line 485
    return-void
.end method
