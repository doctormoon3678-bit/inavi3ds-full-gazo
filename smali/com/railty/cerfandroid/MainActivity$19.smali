.class Lcom/railty/cerfandroid/MainActivity$19;
.super Ljava/lang/Object;
.source "MainActivity.java"

# interfaces
.implements Lcom/railty/cerfandroid/HardwareKeys$Sink;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/railty/cerfandroid/MainActivity;
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

    .line 984
    iput-object p1, p0, Lcom/railty/cerfandroid/MainActivity$19;->this$0:Lcom/railty/cerfandroid/MainActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public Key(IZ)V
    .locals 0

    .line 985
    invoke-static {p1, p2}, Lcom/railty/cerfandroid/MainActivity;->access$2000(IZ)V

    return-void
.end method
