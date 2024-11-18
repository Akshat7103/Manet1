package q2.simulations;

import inet.networklayer.configurator.ipv4.Ipv4NetworkConfigurator;
import inet.node.ethernet.Eth100M;
import inet.node.inet.StandardHost;
import inet.physicallayer.ethernet.EthernetCable;

@license(LGPL);
//
// Network simulation with IPv4 configurator and Ethernet connections
//
network Q2
{
    @display("bgb=688,401");
    submodules:
        server: StandardHost {
            @display("p=336,208");
        }
        client3: StandardHost {
            @display("p=568,131");
        }
        client1: StandardHost {
            @display("p=88,131");
        }
        client4: StandardHost {
            @display("p=568,306");
        }
        client2: StandardHost {
            @display("p=108,306");
        }
        configurator: Ipv4NetworkConfigurator {
            @display("p=315,37");
        }
    connections:
        server.ethg++ <--> Eth100M <--> client1.ethg++;
        server.ethg++ <--> Eth100M <--> client2.ethg++;
        server.ethg++ <--> Eth100M <--> client4.ethg++;
        server.ethg++ <--> Eth100M <--> client3.ethg++;
}
