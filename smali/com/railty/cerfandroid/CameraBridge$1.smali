.class Lcom/railty/cerfandroid/CameraBridge$1;
.super Ljava/lang/Object;
.source "CameraBridge.java"

# interfaces
.implements Landroid/media/ImageReader$OnImageAvailableListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/railty/cerfandroid/CameraBridge;->Start()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/railty/cerfandroid/CameraBridge;


# direct methods
.method constructor <init>(Lcom/railty/cerfandroid/CameraBridge;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 69
    iput-object p1, p0, Lcom/railty/cerfandroid/CameraBridge$1;->this$0:Lcom/railty/cerfandroid/CameraBridge;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onImageAvailable(Landroid/media/ImageReader;)V
    .locals 1

    .line 70
    iget-object v0, p0, Lcom/railty/cerfandroid/CameraBridge$1;->this$0:Lcom/railty/cerfandroid/CameraBridge;

    invoke-static {v0, p1}, Lcom/railty/cerfandroid/CameraBridge;->access$000(Lcom/railty/cerfandroid/CameraBridge;Landroid/media/ImageReader;)V

    return-void
.end method
