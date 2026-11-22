.class Lcom/railty/cerfandroid/CerfInCallService$1;
.super Landroid/telecom/Call$Callback;
.source "CerfInCallService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/railty/cerfandroid/CerfInCallService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/railty/cerfandroid/CerfInCallService;


# direct methods
.method constructor <init>(Lcom/railty/cerfandroid/CerfInCallService;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 27
    iput-object p1, p0, Lcom/railty/cerfandroid/CerfInCallService$1;->this$0:Lcom/railty/cerfandroid/CerfInCallService;

    invoke-direct {p0}, Landroid/telecom/Call$Callback;-><init>()V

    return-void
.end method


# virtual methods
.method public onStateChanged(Landroid/telecom/Call;I)V
    .locals 0

    .line 30
    invoke-static {p1}, Lcom/railty/cerfandroid/CerfInCallService;->access$000(Landroid/telecom/Call;)V

    .line 31
    return-void
.end method
