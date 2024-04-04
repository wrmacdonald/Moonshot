//
//  CrewView.swift
//  Moonshot
//
//  Created by Wes MacDonald on 3/28/24.
//

import SwiftUI

struct CrewView: View {
    let crew: [MissionView.CrewMember]
    
    var body: some View {
        ScrollView(.horizontal, showsIndicators: false) {
            HStack {
                ForEach(crew, id: \.role) { crewMember in
                    NavigationLink(value: crewMember) {
                        HStack {
                            Image(crewMember.astronaut.id)
                                .resizable()
                                .frame(width: 104, height: 72)
                                .clipShape(.circle)
                                .overlay(
                                    Circle()
                                        .strokeBorder(.white, lineWidth: 1)
                                )
                            
                            VStack(alignment: .leading) {
                                Text(crewMember.astronaut.name)
                                    .foregroundStyle(.white)
                                    .font(.headline)
                                Text(crewMember.role)
                                    .foregroundStyle(.white.opacity(0.5))
                            }
                        }
                        .padding(.horizontal)
                    }
                }
            }
            .navigationDestination(for: MissionView.CrewMember.self ) { crewMember in
                AstronautView(astronaut: crewMember.astronaut)
            }
        }
    }
}

#Preview {
    let missions: [Mission] = Bundle.main.decode("missions.json")
    let mission: Mission = missions[1]
    let astronauts: [String: Astronaut] = Bundle.main.decode("astronauts.json")
    let crew = mission.crew.map {member in
        if let astronaut = astronauts[member.name] {
            return MissionView.CrewMember(role: member.role, astronaut: astronaut)
        } else {
            fatalError("Missing \(member.name)")
        }
    }
    
    return CrewView(crew: crew)
        .preferredColorScheme(/*@START_MENU_TOKEN@*/.dark/*@END_MENU_TOKEN@*/)
}
