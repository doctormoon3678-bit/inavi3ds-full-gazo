.class Lcom/railty/cerfandroid/CellBridge$5;
.super Ljava/lang/Object;
.source "CellBridge.java"

# interfaces
.implements Lcom/railty/cerfandroid/CerfInCallService$Listener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/railty/cerfandroid/CellBridge;->Start()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/railty/cerfandroid/CellBridge;


# direct methods
.method constructor <init>(Lcom/railty/cerfandroid/CellBridge;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 145
    iput-object p1, p0, Lcom/railty/cerfandroid/CellBridge$5;->this$0:Lcom/railty/cerfandroid/CellBridge;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public CallChanged(ILjava/lang/String;)V
    .locals 2

    .line 148
    iget-object v0, p0, Lcom/railty/cerfandroid/CellBridge$5;->this$0:Lcom/railty/cerfandroid/CellBridge;

    invoke-static {v0}, Lcom/railty/cerfandroid/CellBridge;->access$600(Lcom/railty/cerfandroid/CellBridge;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/railty/cerfandroid/CellBridge$5$1;

    invoke-direct {v1, p0, p1, p2}, Lcom/railty/cerfandroid/CellBridge$5$1;-><init>(Lcom/railty/cerfandroid/CellBridge$5;ILjava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 154
    return-void
.end method
