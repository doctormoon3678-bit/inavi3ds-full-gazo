.class Lcom/railty/cerfandroid/MainActivity$10;
.super Ljava/lang/Object;
.source "MainActivity.java"

# interfaces
.implements Landroid/widget/PopupMenu$OnMenuItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/railty/cerfandroid/MainActivity;->ShowMenu(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/railty/cerfandroid/MainActivity;


# direct methods
.method constructor <init>(Lcom/railty/cerfandroid/MainActivity;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 546
    iput-object p1, p0, Lcom/railty/cerfandroid/MainActivity$10;->this$0:Lcom/railty/cerfandroid/MainActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onMenuItemClick(Landroid/view/MenuItem;)Z
    .locals 1

    .line 549
    iget-object v0, p0, Lcom/railty/cerfandroid/MainActivity$10;->this$0:Lcom/railty/cerfandroid/MainActivity;

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result p1

    invoke-static {v0, p1}, Lcom/railty/cerfandroid/MainActivity;->access$3500(Lcom/railty/cerfandroid/MainActivity;I)Z

    move-result p1

    return p1
.end method
