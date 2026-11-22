.class Lcom/railty/cerfandroid/CellBridge$2;
.super Landroid/database/ContentObserver;
.source "CellBridge.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/railty/cerfandroid/CellBridge;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/railty/cerfandroid/CellBridge;


# direct methods
.method constructor <init>(Lcom/railty/cerfandroid/CellBridge;Landroid/os/Handler;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x0
        }
        names = {
            null,
            null
        }
    .end annotation

    .line 62
    iput-object p1, p0, Lcom/railty/cerfandroid/CellBridge$2;->this$0:Lcom/railty/cerfandroid/CellBridge;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 0

    .line 64
    iget-object p1, p0, Lcom/railty/cerfandroid/CellBridge$2;->this$0:Lcom/railty/cerfandroid/CellBridge;

    invoke-static {p1}, Lcom/railty/cerfandroid/CellBridge;->access$100(Lcom/railty/cerfandroid/CellBridge;)V

    return-void
.end method
