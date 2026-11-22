.class Lcom/railty/cerfandroid/MainActivity$5;
.super Ljava/lang/Object;
.source "MainActivity.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/railty/cerfandroid/MainActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private downTop:I

.field private downX:F

.field private downY:F

.field private dragging:Z

.field private final startDrag:Ljava/lang/Runnable;

.field final synthetic this$0:Lcom/railty/cerfandroid/MainActivity;

.field final synthetic val$handlePrefs:Landroid/content/SharedPreferences;

.field final synthetic val$handleRight:[Z

.field final synthetic val$handleShape:Landroid/graphics/drawable/GradientDrawable;

.field final synthetic val$menuHandle:Landroid/view/View;

.field final synthetic val$mlp:Landroid/widget/FrameLayout$LayoutParams;

.field final synthetic val$root:Landroid/widget/FrameLayout;


# direct methods
.method constructor <init>(Lcom/railty/cerfandroid/MainActivity;Landroid/view/View;Landroid/graphics/drawable/GradientDrawable;Landroid/widget/FrameLayout$LayoutParams;Landroid/widget/FrameLayout;[ZLandroid/content/SharedPreferences;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010,
            0x1010,
            0x1010,
            0x1010,
            0x1010,
            0x1010
        }
        names = {
            null,
            null,
            null,
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

    .line 232
    iput-object p1, p0, Lcom/railty/cerfandroid/MainActivity$5;->this$0:Lcom/railty/cerfandroid/MainActivity;

    iput-object p2, p0, Lcom/railty/cerfandroid/MainActivity$5;->val$menuHandle:Landroid/view/View;

    iput-object p3, p0, Lcom/railty/cerfandroid/MainActivity$5;->val$handleShape:Landroid/graphics/drawable/GradientDrawable;

    iput-object p4, p0, Lcom/railty/cerfandroid/MainActivity$5;->val$mlp:Landroid/widget/FrameLayout$LayoutParams;

    iput-object p5, p0, Lcom/railty/cerfandroid/MainActivity$5;->val$root:Landroid/widget/FrameLayout;

    iput-object p6, p0, Lcom/railty/cerfandroid/MainActivity$5;->val$handleRight:[Z

    iput-object p7, p0, Lcom/railty/cerfandroid/MainActivity$5;->val$handlePrefs:Landroid/content/SharedPreferences;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 237
    new-instance p1, Lcom/railty/cerfandroid/MainActivity$5$1;

    invoke-direct {p1, p0}, Lcom/railty/cerfandroid/MainActivity$5$1;-><init>(Lcom/railty/cerfandroid/MainActivity$5;)V

    iput-object p1, p0, Lcom/railty/cerfandroid/MainActivity$5;->startDrag:Ljava/lang/Runnable;

    return-void
.end method

.method static synthetic access$2302(Lcom/railty/cerfandroid/MainActivity$5;Z)Z
    .locals 0

    .line 232
    iput-boolean p1, p0, Lcom/railty/cerfandroid/MainActivity$5;->dragging:Z

    return p1
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 7

    .line 248
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    const/16 v1, 0x8c

    const/16 v2, 0xff

    const/4 v3, 0x1

    const/4 v4, 0x0

    packed-switch v0, :pswitch_data_0

    .line 288
    return v3

    .line 283
    :pswitch_0
    iget-object p2, p0, Lcom/railty/cerfandroid/MainActivity$5;->startDrag:Ljava/lang/Runnable;

    invoke-virtual {p1, p2}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 284
    iput-boolean v4, p0, Lcom/railty/cerfandroid/MainActivity$5;->dragging:Z

    .line 285
    iget-object p1, p0, Lcom/railty/cerfandroid/MainActivity$5;->val$handleShape:Landroid/graphics/drawable/GradientDrawable;

    invoke-static {v1, v2, v2, v2}, Landroid/graphics/Color;->argb(IIII)I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    .line 286
    return v3

    .line 257
    :pswitch_1
    iget-boolean v0, p0, Lcom/railty/cerfandroid/MainActivity$5;->dragging:Z

    if-nez v0, :cond_1

    .line 258
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result p2

    iget v0, p0, Lcom/railty/cerfandroid/MainActivity$5;->downY:F

    sub-float/2addr p2, v0

    invoke-static {p2}, Ljava/lang/Math;->abs(F)F

    move-result p2

    iget-object v0, p0, Lcom/railty/cerfandroid/MainActivity$5;->this$0:Lcom/railty/cerfandroid/MainActivity;

    const/16 v1, 0xc

    invoke-static {v0, v1}, Lcom/railty/cerfandroid/MainActivity;->access$2200(Lcom/railty/cerfandroid/MainActivity;I)I

    move-result v0

    int-to-float v0, v0

    cmpl-float p2, p2, v0

    if-lez p2, :cond_0

    iget-object p2, p0, Lcom/railty/cerfandroid/MainActivity$5;->startDrag:Ljava/lang/Runnable;

    invoke-virtual {p1, p2}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 259
    :cond_0
    return v3

    .line 261
    :cond_1
    iget-object v0, p0, Lcom/railty/cerfandroid/MainActivity$5;->val$mlp:Landroid/widget/FrameLayout$LayoutParams;

    iget-object v1, p0, Lcom/railty/cerfandroid/MainActivity$5;->val$root:Landroid/widget/FrameLayout;

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getHeight()I

    move-result v1

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v2

    sub-int/2addr v1, v2

    iget v2, p0, Lcom/railty/cerfandroid/MainActivity$5;->downTop:I

    .line 262
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result p2

    iget v5, p0, Lcom/railty/cerfandroid/MainActivity$5;->downY:F

    sub-float/2addr p2, v5

    float-to-int p2, p2

    add-int/2addr v2, p2

    .line 261
    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result p2

    invoke-static {v4, p2}, Ljava/lang/Math;->max(II)I

    move-result p2

    iput p2, v0, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 263
    iget-object p2, p0, Lcom/railty/cerfandroid/MainActivity$5;->val$mlp:Landroid/widget/FrameLayout$LayoutParams;

    invoke-virtual {p1, p2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 264
    return v3

    .line 266
    :pswitch_2
    iget-object v0, p0, Lcom/railty/cerfandroid/MainActivity$5;->startDrag:Ljava/lang/Runnable;

    invoke-virtual {p1, v0}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 267
    iget-boolean v0, p0, Lcom/railty/cerfandroid/MainActivity$5;->dragging:Z

    if-eqz v0, :cond_4

    .line 268
    const/4 v0, 0x2

    new-array v0, v0, [I

    .line 269
    iget-object v5, p0, Lcom/railty/cerfandroid/MainActivity$5;->val$root:Landroid/widget/FrameLayout;

    invoke-virtual {v5, v0}, Landroid/widget/FrameLayout;->getLocationOnScreen([I)V

    .line 270
    iget-object v5, p0, Lcom/railty/cerfandroid/MainActivity$5;->val$handleRight:[Z

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result p2

    aget v0, v0, v4

    int-to-float v0, v0

    sub-float/2addr p2, v0

    iget-object v0, p0, Lcom/railty/cerfandroid/MainActivity$5;->val$root:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getWidth()I

    move-result v0

    int-to-float v0, v0

    const/high16 v6, 0x40000000    # 2.0f

    div-float/2addr v0, v6

    cmpl-float p2, p2, v0

    if-lez p2, :cond_2

    move p2, v3

    goto :goto_0

    :cond_2
    move p2, v4

    :goto_0
    aput-boolean p2, v5, v4

    .line 271
    iget-object p2, p0, Lcom/railty/cerfandroid/MainActivity$5;->val$mlp:Landroid/widget/FrameLayout$LayoutParams;

    iget-object v0, p0, Lcom/railty/cerfandroid/MainActivity$5;->val$handleRight:[Z

    aget-boolean v0, v0, v4

    if-eqz v0, :cond_3

    const v0, 0x800005

    goto :goto_1

    :cond_3
    const v0, 0x800003

    :goto_1
    or-int/lit8 v0, v0, 0x30

    iput v0, p2, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 272
    iget-object p2, p0, Lcom/railty/cerfandroid/MainActivity$5;->val$mlp:Landroid/widget/FrameLayout$LayoutParams;

    invoke-virtual {p1, p2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 273
    iget-object p1, p0, Lcom/railty/cerfandroid/MainActivity$5;->val$handleShape:Landroid/graphics/drawable/GradientDrawable;

    invoke-static {v1, v2, v2, v2}, Landroid/graphics/Color;->argb(IIII)I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    .line 274
    iget-object p1, p0, Lcom/railty/cerfandroid/MainActivity$5;->val$handleShape:Landroid/graphics/drawable/GradientDrawable;

    iget-object p2, p0, Lcom/railty/cerfandroid/MainActivity$5;->this$0:Lcom/railty/cerfandroid/MainActivity;

    iget-object v0, p0, Lcom/railty/cerfandroid/MainActivity$5;->val$handleRight:[Z

    aget-boolean v0, v0, v4

    invoke-static {p2, v0}, Lcom/railty/cerfandroid/MainActivity;->access$2400(Lcom/railty/cerfandroid/MainActivity;Z)[F

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadii([F)V

    .line 275
    iget-object p1, p0, Lcom/railty/cerfandroid/MainActivity$5;->val$handlePrefs:Landroid/content/SharedPreferences;

    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    iget-object p2, p0, Lcom/railty/cerfandroid/MainActivity$5;->val$mlp:Landroid/widget/FrameLayout$LayoutParams;

    iget p2, p2, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    const-string v0, "handle_top"

    invoke-interface {p1, v0, p2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    iget-object p2, p0, Lcom/railty/cerfandroid/MainActivity$5;->val$handleRight:[Z

    aget-boolean p2, p2, v4

    .line 276
    const-string v0, "handle_right"

    invoke-interface {p1, v0, p2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 277
    iput-boolean v4, p0, Lcom/railty/cerfandroid/MainActivity$5;->dragging:Z

    .line 278
    goto :goto_2

    .line 279
    :cond_4
    iget-object p2, p0, Lcom/railty/cerfandroid/MainActivity$5;->this$0:Lcom/railty/cerfandroid/MainActivity;

    invoke-static {p2, p1}, Lcom/railty/cerfandroid/MainActivity;->access$2500(Lcom/railty/cerfandroid/MainActivity;Landroid/view/View;)V

    .line 281
    :goto_2
    return v3

    .line 250
    :pswitch_3
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result v0

    iput v0, p0, Lcom/railty/cerfandroid/MainActivity$5;->downX:F

    .line 251
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result p2

    iput p2, p0, Lcom/railty/cerfandroid/MainActivity$5;->downY:F

    .line 252
    iget-object p2, p0, Lcom/railty/cerfandroid/MainActivity$5;->val$mlp:Landroid/widget/FrameLayout$LayoutParams;

    iget p2, p2, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    iput p2, p0, Lcom/railty/cerfandroid/MainActivity$5;->downTop:I

    .line 253
    iput-boolean v4, p0, Lcom/railty/cerfandroid/MainActivity$5;->dragging:Z

    .line 254
    iget-object p2, p0, Lcom/railty/cerfandroid/MainActivity$5;->startDrag:Ljava/lang/Runnable;

    invoke-static {}, Landroid/view/ViewConfiguration;->getLongPressTimeout()I

    move-result v0

    int-to-long v0, v0

    invoke-virtual {p1, p2, v0, v1}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 255
    return v3

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
