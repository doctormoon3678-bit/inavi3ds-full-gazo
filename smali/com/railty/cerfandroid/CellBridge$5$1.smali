.class Lcom/railty/cerfandroid/CellBridge$5$1;
.super Ljava/lang/Object;
.source "CellBridge.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/railty/cerfandroid/CellBridge$5;->CallChanged(ILjava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/railty/cerfandroid/CellBridge$5;

.field final synthetic val$number:Ljava/lang/String;

.field final synthetic val$state:I


# direct methods
.method constructor <init>(Lcom/railty/cerfandroid/CellBridge$5;ILjava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010,
            0x1010
        }
        names = {
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

    .line 148
    iput-object p1, p0, Lcom/railty/cerfandroid/CellBridge$5$1;->this$1:Lcom/railty/cerfandroid/CellBridge$5;

    iput p2, p0, Lcom/railty/cerfandroid/CellBridge$5$1;->val$state:I

    iput-object p3, p0, Lcom/railty/cerfandroid/CellBridge$5$1;->val$number:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 150
    iget-object v0, p0, Lcom/railty/cerfandroid/CellBridge$5$1;->this$1:Lcom/railty/cerfandroid/CellBridge$5;

    iget-object v0, v0, Lcom/railty/cerfandroid/CellBridge$5;->this$0:Lcom/railty/cerfandroid/CellBridge;

    invoke-static {v0}, Lcom/railty/cerfandroid/CellBridge;->access$000(Lcom/railty/cerfandroid/CellBridge;)Lcom/railty/cerfandroid/CellBridge$Native;

    move-result-object v0

    iget v1, p0, Lcom/railty/cerfandroid/CellBridge$5$1;->val$state:I

    iget-object v2, p0, Lcom/railty/cerfandroid/CellBridge$5$1;->val$number:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Lcom/railty/cerfandroid/CellBridge$Native;->CallState(ILjava/lang/String;)V

    .line 151
    iget v0, p0, Lcom/railty/cerfandroid/CellBridge$5$1;->val$state:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/railty/cerfandroid/CellBridge$5$1;->this$1:Lcom/railty/cerfandroid/CellBridge$5;

    iget-object v0, v0, Lcom/railty/cerfandroid/CellBridge$5;->this$0:Lcom/railty/cerfandroid/CellBridge;

    invoke-static {v0}, Lcom/railty/cerfandroid/CellBridge;->access$500(Lcom/railty/cerfandroid/CellBridge;)Ljava/lang/Runnable;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 152
    :cond_0
    return-void
.end method
