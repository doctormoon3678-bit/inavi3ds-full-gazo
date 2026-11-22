.class Lcom/railty/cerfandroid/LauncherActivity$19;
.super Ljava/lang/Object;
.source "LauncherActivity.java"

# interfaces
.implements Landroid/view/View$OnApplyWindowInsetsListener;


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

.field final synthetic val$scroll:Landroid/widget/ScrollView;


# direct methods
.method constructor <init>(Lcom/railty/cerfandroid/LauncherActivity;Landroid/widget/ScrollView;)V
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

    .line 462
    iput-object p1, p0, Lcom/railty/cerfandroid/LauncherActivity$19;->this$0:Lcom/railty/cerfandroid/LauncherActivity;

    iput-object p2, p0, Lcom/railty/cerfandroid/LauncherActivity$19;->val$scroll:Landroid/widget/ScrollView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onApplyWindowInsets(Landroid/view/View;Landroid/view/WindowInsets;)Landroid/view/WindowInsets;
    .locals 3

    .line 465
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x23

    if-ge p1, v0, :cond_0

    return-object p2

    .line 466
    :cond_0
    nop

    .line 467
    invoke-static {}, Landroid/view/WindowInsets$Type;->systemBars()I

    move-result p1

    .line 468
    invoke-static {}, Landroid/view/WindowInsets$Type;->ime()I

    move-result v0

    or-int/2addr p1, v0

    .line 466
    invoke-virtual {p2, p1}, Landroid/view/WindowInsets;->getInsets(I)Landroid/graphics/Insets;

    move-result-object p1

    .line 469
    iget v0, p1, Landroid/graphics/Insets;->top:I

    .line 470
    iget p1, p1, Landroid/graphics/Insets;->bottom:I

    .line 471
    iget-object v1, p0, Lcom/railty/cerfandroid/LauncherActivity$19;->val$scroll:Landroid/widget/ScrollView;

    .line 472
    invoke-virtual {v1}, Landroid/widget/ScrollView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout$LayoutParams;

    .line 473
    iget v2, v1, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    if-ne v2, v0, :cond_1

    iget v2, v1, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    if-eq v2, p1, :cond_2

    .line 474
    :cond_1
    iput v0, v1, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 475
    iput p1, v1, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    .line 476
    iget-object p1, p0, Lcom/railty/cerfandroid/LauncherActivity$19;->val$scroll:Landroid/widget/ScrollView;

    invoke-virtual {p1, v1}, Landroid/widget/ScrollView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 477
    iget-object p1, p0, Lcom/railty/cerfandroid/LauncherActivity$19;->val$scroll:Landroid/widget/ScrollView;

    new-instance v0, Lcom/railty/cerfandroid/LauncherActivity$19$1;

    invoke-direct {v0, p0}, Lcom/railty/cerfandroid/LauncherActivity$19$1;-><init>(Lcom/railty/cerfandroid/LauncherActivity$19;)V

    invoke-virtual {p1, v0}, Landroid/widget/ScrollView;->post(Ljava/lang/Runnable;)Z

    .line 488
    :cond_2
    return-object p2
.end method
