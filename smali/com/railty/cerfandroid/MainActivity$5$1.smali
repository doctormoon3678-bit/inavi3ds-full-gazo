.class Lcom/railty/cerfandroid/MainActivity$5$1;
.super Ljava/lang/Object;
.source "MainActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/railty/cerfandroid/MainActivity$5;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/railty/cerfandroid/MainActivity$5;


# direct methods
.method constructor <init>(Lcom/railty/cerfandroid/MainActivity$5;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 237
    iput-object p1, p0, Lcom/railty/cerfandroid/MainActivity$5$1;->this$1:Lcom/railty/cerfandroid/MainActivity$5;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 240
    iget-object v0, p0, Lcom/railty/cerfandroid/MainActivity$5$1;->this$1:Lcom/railty/cerfandroid/MainActivity$5;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/railty/cerfandroid/MainActivity$5;->access$2302(Lcom/railty/cerfandroid/MainActivity$5;Z)Z

    .line 241
    iget-object v0, p0, Lcom/railty/cerfandroid/MainActivity$5$1;->this$1:Lcom/railty/cerfandroid/MainActivity$5;

    iget-object v0, v0, Lcom/railty/cerfandroid/MainActivity$5;->val$menuHandle:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->performHapticFeedback(I)Z

    .line 242
    iget-object v0, p0, Lcom/railty/cerfandroid/MainActivity$5$1;->this$1:Lcom/railty/cerfandroid/MainActivity$5;

    iget-object v0, v0, Lcom/railty/cerfandroid/MainActivity$5;->val$handleShape:Landroid/graphics/drawable/GradientDrawable;

    const/16 v1, 0xc8

    const/16 v2, 0xff

    const/16 v3, 0xdc

    const/16 v4, 0x78

    invoke-static {v3, v4, v1, v2}, Landroid/graphics/Color;->argb(IIII)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    .line 243
    return-void
.end method
