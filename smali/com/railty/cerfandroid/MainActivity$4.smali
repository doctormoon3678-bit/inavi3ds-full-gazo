.class Lcom/railty/cerfandroid/MainActivity$4;
.super Ljava/lang/Object;
.source "MainActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/railty/cerfandroid/MainActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/railty/cerfandroid/MainActivity;

.field final synthetic val$menuHandle:Landroid/view/View;

.field final synthetic val$mlp:Landroid/widget/FrameLayout$LayoutParams;

.field final synthetic val$root:Landroid/widget/FrameLayout;


# direct methods
.method constructor <init>(Lcom/railty/cerfandroid/MainActivity;Landroid/widget/FrameLayout$LayoutParams;Landroid/widget/FrameLayout;Landroid/view/View;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010,
            0x1010,
            0x1010
        }
        names = {
            null,
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

    .line 222
    iput-object p1, p0, Lcom/railty/cerfandroid/MainActivity$4;->this$0:Lcom/railty/cerfandroid/MainActivity;

    iput-object p2, p0, Lcom/railty/cerfandroid/MainActivity$4;->val$mlp:Landroid/widget/FrameLayout$LayoutParams;

    iput-object p3, p0, Lcom/railty/cerfandroid/MainActivity$4;->val$root:Landroid/widget/FrameLayout;

    iput-object p4, p0, Lcom/railty/cerfandroid/MainActivity$4;->val$menuHandle:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 225
    iget-object v0, p0, Lcom/railty/cerfandroid/MainActivity$4;->val$mlp:Landroid/widget/FrameLayout$LayoutParams;

    iget-object v1, p0, Lcom/railty/cerfandroid/MainActivity$4;->val$root:Landroid/widget/FrameLayout;

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getHeight()I

    move-result v1

    iget-object v2, p0, Lcom/railty/cerfandroid/MainActivity$4;->this$0:Lcom/railty/cerfandroid/MainActivity;

    const/16 v3, 0x50

    invoke-static {v2, v3}, Lcom/railty/cerfandroid/MainActivity;->access$2200(Lcom/railty/cerfandroid/MainActivity;I)I

    move-result v2

    sub-int/2addr v1, v2

    div-int/lit8 v1, v1, 0x2

    const/4 v2, 0x0

    invoke-static {v2, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 226
    iget-object v0, p0, Lcom/railty/cerfandroid/MainActivity$4;->val$menuHandle:Landroid/view/View;

    iget-object v1, p0, Lcom/railty/cerfandroid/MainActivity$4;->val$mlp:Landroid/widget/FrameLayout$LayoutParams;

    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 227
    return-void
.end method
