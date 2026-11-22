.class Lcom/railty/cerfandroid/MainActivity$18;
.super Ljava/lang/Object;
.source "MainActivity.java"

# interfaces
.implements Landroid/content/ClipboardManager$OnPrimaryClipChangedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/railty/cerfandroid/MainActivity;->StartClipboardShare(Z)V
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

    .line 961
    iput-object p1, p0, Lcom/railty/cerfandroid/MainActivity$18;->this$0:Lcom/railty/cerfandroid/MainActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPrimaryClipChanged()V
    .locals 1

    .line 963
    iget-object v0, p0, Lcom/railty/cerfandroid/MainActivity$18;->this$0:Lcom/railty/cerfandroid/MainActivity;

    invoke-static {v0}, Lcom/railty/cerfandroid/MainActivity;->access$6300(Lcom/railty/cerfandroid/MainActivity;)V

    return-void
.end method
