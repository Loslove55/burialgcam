.class final synthetic Lbhz;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final a:Lbia;


# direct methods
.method public constructor <init>(Lbia;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lbhz;->a:Lbia;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lbhz;->a:Lbia;

    iget-object v0, v0, Lbia;->a:Lbhw;

    invoke-interface {v0}, Lbhw;->a()V

    return-void
.end method
